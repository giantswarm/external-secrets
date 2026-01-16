# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Fixed

- Update references to Deployments in VPAs.

### Changed

- Migrate Chart.yaml annotations to new format as per https://docs.giantswarm.io/reference/platform-api/chart-metadata/
## [0.20.4] - 2025-11-06

### Changed

- Upgrading to the `v0.20.4` version. Included changes:
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.19.0
    - Includes a breaking change because the CRDs are now too big. Apply them with `--server-side` flag of `kubectl apply`. 
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.19.1
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.19.2
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.20.0
    - Includes a change in CRDs that make it non-backward compatible with Kubernetes releases older than `v1.30`.
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.20.1
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.20.2
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.20.3
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.20.4

### Removed

- Remove PSP support (in CRD installer job, RBAC, values.yaml).

## [0.18.3] - 2025-10-03

### Changed

- Only support Kyverno `PolicyException` version `v2` and remove `v2beta1` support.

## [0.18.2] - 2025-07-17

### Changed

- Upgrading to the `v0.18.2` version. Included changes:
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.18.1
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.18.2

## [0.18.0] - 2025-06-27

### Changed

- Upgrading to the `v0.18.0` version. Includes **breaking changes**, including API version changes:
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.12.1
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.13.0
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.14.0
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.16.0
    - `externalsecrets.external-secrets.io` got `v1alpha1` removed, promoted to `v1`
    - `secretstores.external-secrets.io` got `v1alpha1` removed, promoted to `v1`
    - `clustersecretstores.external-secrets.io` got `v1alpha1` removed, promoted to `v1`
    - `clusterexternalsecrets.external-secrets.io` got `v1alpha1` removed, promoted to `v1`
  - https://github.com/external-secrets/external-secrets/releases/tag/v0.18.0

## [0.11.1] - 2024-11-06

### Changed

- Bump image version to v0.10.5 to resolve issue with failing to auth to
  kubernetes using client certs

## [0.11.0] - 2024-10-31

### Changed

- Upgrading to the `v0.10.5` version. Includes [breaking changes](https://github.com/external-secrets/external-secrets/releases/tag/v0.10.0).
- Update Kyverno PolicyExceptions to v2 and fallback to v2beta1.

## [0.10.0] - 2024-04-23

- Upgrading to the `v0.9.16` version.

## [0.9.1] - 2024-04-17

- Upgrading to the `v0.9.15-2` version.

## [0.9.0] - 2024-03-28

- Upgrading to the `v0.9.13` version.

## [0.8.4] - 2024-02-28

- Fix policy exception

## [0.8.3] - 2024-02-20

### Fixed

- Fixed Kyverno policy exception for the CRD installer job

## [0.8.2] - 2024-01-29

### Fixed

- Move pss values under the global property

## [0.8.1] - 2023-12-20

### Changed

- Configure `gsoci.azurecr.io` as the default container image registry.

## [0.8.0] - 2023-11-28

### Added

- Add PolicyExceptions for Deployments and CRD install Job.

## [0.7.0] - 2023-11-10

### Changed

- Add a switch for PSP CR installation.

## [0.6.6] - 2023-08-30

### Fixed

- Fixed selector labels for Cilium network policy

## [0.6.5] - 2023-08-01

## [0.6.4] - 2023-07-18

### Changed

- Split original and cilium network policies instead of excluding each other by condition where cilium was preferred if CRDs for it were present

## [0.6.3] - 2023-07-13

## [0.6.2] - 2023-07-07

## [0.6.1] - 2023-06-12

### Added

- Added `NetworkPolicy` by default when Cilium is not available

### Changed

- Install `PushSecret` CRD by default to follow upstream

## [0.6.0] - 2023-06-08

### Added

- Added `node-role.kubernetes.io/control-plane` to crd install jobs toleration

### Changed

- Updated templates to consistently use `{{ include "external-secrets.name" . }}` instead of `{{ include "external-secrets.fullName" . }}`
  - The conversion webhook on CRDs use `{{ include "external-secrets.name" . }}`
  - The `ClusterRole` previously called `{{ include "external-secrets.fullName" . }}-servicebindings` was renamed to `{{ include "external-secrets.name" . }}-servicebindings`
  - The `external-secrets` service account was renamed from using `external-secrets.fullName` to `external-secrets.name` by default

### Changed

- Update `external-secrets` to `v0.8.3`

## [0.5.0] - 2023-04-27

### Changed

- Update `external-secrets` to `v0.8.1`

## [0.4.3] - 2023-04-26

### Updated

- Use SVG icon

## [0.4.2] - 2023-03-22

### Fixed

- The VPA for `external-secrets` erroneously picks up the `kubectl` pod created by the CRD installer job and changes the resource requirements for it potentially causing OOM kill for it

## [0.4.1] - 2023-03-07

- Add cluster and world to CiliumNetworkPolicy

## [0.4.0] - 2023-02-09

### Added

- Add support for `VPA` for core, cert-controller and webhook deployments, enabled by default

## [0.3.0] - 2023-01-24

### Added

- Add support for clusters with `cilium` network and prepare for PSP not being available after kubernetes 1.25

### Changed

- Use `external-secrets.name` instead of `external-secrets.fullname` for resource names prefix
- Update ATS tests to use `v0.2.1` from `giantswarm-catalog`
- Update `README.md`

## [0.2.1] - 2023-01-16

### Fixed

- Fix release process

## [0.2.0] - 2023-01-16

### Changed

- Push artifacts to `giantswarm-catalog` and `giantswarm-test-catalog`

## [0.1.0] - 2022-12-19

### Added

- Add initial chart to deploy `external-secrets` as a Giant Swarm application

[Unreleased]: https://github.com/giantswarm/external-secrets/compare/v0.20.4...HEAD
[0.20.4]: https://github.com/giantswarm/external-secrets/compare/v0.18.3...v0.20.4
[0.18.3]: https://github.com/giantswarm/external-secrets/compare/v0.18.2...v0.18.3
[0.18.2]: https://github.com/giantswarm/external-secrets/compare/v0.18.0...v0.18.2
[0.18.0]: https://github.com/giantswarm/external-secrets/compare/v0.11.1...v0.18.0
[0.11.1]: https://github.com/giantswarm/external-secrets/compare/v0.11.0...v0.11.1
[0.11.0]: https://github.com/giantswarm/external-secrets/compare/v0.10.0...v0.11.0
[0.10.0]: https://github.com/giantswarm/external-secrets/compare/v0.9.1...v0.10.0
[0.9.1]: https://github.com/giantswarm/external-secrets/compare/v0.9.0...v0.9.1
[0.9.0]: https://github.com/giantswarm/external-secrets/compare/v0.8.4...v0.9.0
[0.8.4]: https://github.com/giantswarm/external-secrets/compare/v0.8.3...v0.8.4
[0.8.3]: https://github.com/giantswarm/external-secrets/compare/v0.8.2...v0.8.3
[0.8.2]: https://github.com/giantswarm/external-secrets/compare/v0.8.1...v0.8.2
[0.8.1]: https://github.com/giantswarm/external-secrets/compare/v0.8.0...v0.8.1
[0.8.0]: https://github.com/giantswarm/external-secrets/compare/v0.7.0...v0.8.0
[0.7.0]: https://github.com/giantswarm/external-secrets/compare/v0.6.6...v0.7.0
[0.6.6]: https://github.com/giantswarm/external-secrets/compare/v0.6.5...v0.6.6
[0.6.5]: https://github.com/giantswarm/external-secrets/compare/v0.6.4...v0.6.5
[0.6.4]: https://github.com/giantswarm/external-secrets/compare/v0.6.3...v0.6.4
[0.6.3]: https://github.com/giantswarm/external-secrets/compare/v0.6.2...v0.6.3
[0.6.2]: https://github.com/giantswarm/external-secrets/compare/v0.6.1...v0.6.2
[0.6.1]: https://github.com/giantswarm/external-secrets/compare/v0.6.0...v0.6.1
[0.6.0]: https://github.com/giantswarm/external-secrets/compare/v0.5.0...v0.6.0
[0.5.0]: https://github.com/giantswarm/external-secrets/compare/v0.4.3...v0.5.0
[0.4.3]: https://github.com/giantswarm/external-secrets/compare/v0.4.2...v0.4.3
[0.4.2]: https://github.com/giantswarm/external-secrets/compare/v0.4.2...v0.4.2
[0.4.2]: https://github.com/giantswarm/external-secrets/compare/v0.4.1...v0.4.2
[0.4.1]: https://github.com/giantswarm/external-secrets/compare/v0.4.0...v0.4.1
[0.4.0]: https://github.com/giantswarm/external-secrets/compare/v0.3.0...v0.4.0
[0.3.0]: https://github.com/giantswarm/external-secrets/compare/v0.2.1...v0.3.0
[0.2.1]: https://github.com/giantswarm/external-secrets/compare/v0.2.1...v0.2.1
[0.2.1]: https://github.com/giantswarm/external-secrets/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/giantswarm/external-secrets/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/giantswarm/external-secrets/releases/tag/v0.1.0
