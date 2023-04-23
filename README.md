# Gunzy OS

[![build-ublue](https://github.com/gunzy83/gunzy-os/actions/workflows/build.yml/badge.svg)](https://github.com/gunzy83/gunzy-os/actions/workflows/build.yml)

This is my opinionated build of ublue-os based on the [Kinoite base image](ghcr.io/ublue-os/kinoite-main) and utilises [ostree native container image](https://fedoraproject.org/wiki/Changes/OstreeNativeContainerStable).

For more info, check out the [uBlue homepage](https://ublue.it/) and the [main uBlue repo](https://github.com/ublue-os/main/)

## Installation

To rebase an existing Silverblue/Kinoite installation to the latest build:

```
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/gunzy83/gunzy-os:latest
```

This repository builds date tags as well, so if you want to rebase to a particular day's build:

```
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/gunzy83/gunzy-os:20230403
```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so the version will be bumped when I am ready to move to the next release version.

To pin to a particular Fedora release (eg 38), rebased with the following command:

```
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/gunzy83/gunzy-os:38
```

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/gunzy83/gunzy-os

If you're forking this repo, the uBlue website has [instructions](https://ublue.it/making-your-own/) for setting up signing properly.
