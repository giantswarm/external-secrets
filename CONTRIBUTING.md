## Update from upstream

TODO;

- CRDs
  - `helm repo add external-secrets https://charts.external-secrets.io`
  - `helm pull external-secrets/external-secrets --version v<NEW_VERSION>`
  - `tar -xzf external-secrets-<NEW_VERSION>.tgz`
  - copy over the CRDs from the extracted artifact to `helm/external-secrets/crd-base`
  - remove the wrapping conditions for `installCRDs` from all CRDs yaml files (will remove it from `values.yaml` too)
    - NOTE: for the cluster scoped store and secrets there is an extra condition, we remove that too
      (will remove `crds` section from `values.yaml` too)
- Helper templates
- values.yaml
  - remove `installCRDs: true`, it will be controlled by `giantswarm.crds.install` instead
  - remove `crds` section, we install all resources
  - moved `.image` under `.giantswarm.images` + remove `.image`
  - moved `.certController.image` under `.giantswarm.images` + remove `.certController.image`
  - moved `.webhook.image` under `.giantswarm.images` + remove `.webhook.image`
  - same for all 3 `securityContext` and `resources`
  - check / updated under `helm/external-secrets/templates/deployment.yaml`
  - schema-gen w/ `helm schema-gen helm/external-secrets/values.yaml > helm/external-secrets/values.schema.json`
- Chart.yaml