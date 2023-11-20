#!/usr/bin/env bash

set -oue pipefail

echo 'Installing chezmoi...'
CHEZMOI_VERSION='2.41.0'
rpm -Uvh https://github.com/twpayne/chezmoi/releases/download/v${CHEZMOI_VERSION}/chezmoi-${CHEZMOI_VERSION}-x86_64.rpm
