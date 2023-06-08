## Update from upstream

- CRDs
  - `helm repo add external-secrets https://charts.external-secrets.io`
  - `helm pull external-secrets/external-secrets --version v<NEW_VERSION>`
  - `tar -xzf external-secrets-<NEW_VERSION>.tgz`
  - copy over the CRDs from the extracted artifact to `helm/external-secrets/crd-base`
  - remove the wrapping conditions for `installCRDs` from all CRDs yaml files (will remove it from `values.yaml` too)
    - IMPORTANT NOTE: keep it for the Cluster* CRDs, just align the conditions to only check `crds.createClusterExternalSecret`
      and `crds.createClusterSecretStore` respectively
- sync subtree with upstream (based on: https://handbook.giantswarm.io/product/managed-apps/dev-experience/git-subtree/)
  - pull changes and tags to https://github.com/giantswarm/external-secrets-copy
  - ```bash
    # If you don't already have it:
    git remote add -f --no-tags upstream-copy git@github.com:giantswarm/external-secrets-copy.git
    
    # Checkout the target tag and split the subtree to a temporary branch
    git fetch --no-tags upstream-copy refs/tags/v0.7.0:refs/tags/upstream-v0.7.0
    git checkout upstream-v0.7.0
    git subtree split -P deploy/charts/external-secrets -b temp-split-branch
    
    # Prepare upgrade branch
    git checkout main
    git pull
    git checkout -b upgrade-to-v0.7.0
    
    # Merge subtree
    git subtree merge --squash -P helm/external-secrets temp-split-branch
    git notes add -m "upstreamSync: https://github.com/external-secrets/external-secrets/tree/v0.7.0"
    
    # Clean up
    git tag -d upstream-v0.7.0
    git branch -D temp-split-branch
    ```
  - resolve conflicts (if any)
- please make sure that `{{ include "external-secrets.name" . }}` is used consistently instead of `{{ include "external-secrets.fullName" . }}`
  - reason is that it is better user experience and safe because we restrict the app to be cluster singleton
- helm schema generation
  - generate the values schema with `helm schema-gen helm/external-secrets/values.yaml > helm/external-secrets/values.schema.json`
- Chart.yaml
  - update the `.appVersion` field
- fix git tree
  - squash new commits / changes into a single commit
    - optimally the pull request has the following commits before merging:
      - the squash of upstream subdir
      - the merge commit of subtree
      - the squashed changes made by us
- merge (not squash) the pull request to `main`
