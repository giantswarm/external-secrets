# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

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

- Fix more release issues

## [0.2.1] - 2023-01-16

### Fixed

- Fix release process

## [0.2.0] - 2023-01-16

### Changed

- Push artifacts to `giantswarm-catalog` and `giantswarm-test-catalog`

## [0.1.0] - 2022-12-19

### Added

- Add initial chart to deploy `external-secrets` as a Giant Swarm application

[Unreleased]: https://github.com/giantswarm/external-secrets/compare/v0.3.0...HEAD
[0.3.0]: https://github.com/giantswarm/external-secrets/compare/v0.2.1...v0.3.0
[0.2.1]: https://github.com/giantswarm/external-secrets/compare/v0.2.1...v0.2.1
[0.2.1]: https://github.com/giantswarm/external-secrets/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/giantswarm/external-secrets/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/giantswarm/external-secrets/releases/tag/v0.1.0
