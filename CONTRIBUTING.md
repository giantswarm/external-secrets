## Update from upstream

TODO;

- CRDs
- Helper templates
- values.yaml
  - moved `.image` under `.giantswarm.images` + remove `.image`
  - moved `.certController.image` under `.giantswarm.images` + remove `.certController.image`
  - moved `.webhook.image` under `.giantswarm.images` + remove `.webhook.image`
  - same for all 3 `securityContext` and `resources`
  - check / updated under `helm/eso/templates/deployment.yaml`
  - schema-gen w/ `helm schema-gen helm/eso/values.yaml > helm/eso/values.schema.json`
- Chart.yaml