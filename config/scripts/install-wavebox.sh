#!/usr/bin/env bash

set -oue pipefail

echo 'Installing wavebox (installs to /opt) and handle symlinking...'

mkdir -p /var/opt

echo 'Installing wavebox browser...'
rpm -Uvh https://download.wavebox.app/latest/stable/linux/rpm
mv /var/opt/wavebox.io/wavebox/ /usr/lib/wavebox
echo 'L /opt/wavebox.io/wavebox - - - - ../../../usr/lib/wavebox' > /usr/lib/tmpfiles.d/wavebox.conf
