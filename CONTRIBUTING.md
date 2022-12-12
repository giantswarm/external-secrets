## Update from upstream

TODO;

- CRDs
- Helper templates
- values.yaml
  - moved `.image` under `.giantswarm` + remove `.image`
  - check / updated under `helm/eso/templates/deployment.yaml`
  - schema-gen w/ `helm schema-gen helm/eso/values.yaml > helm/eso/values.schema.json`
- Chart.yaml