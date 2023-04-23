#!/usr/bin/env bash

set -oue pipefail

echo 'Installing packages that are installed in opt and handle symlinking...'

mkdir /var/opt

echo 'Installing 1password desktop...'
rpm -Uvh https://downloads.1password.com/linux/rpm/stable/x86_64/1password-latest.rpm
mv /var/opt/1Password/ /usr/lib/1password
echo 'L /opt/1Password - - - - ../../usr/lib/1password' > /usr/lib/tmpfiles.d/1password.conf

echo 'Installing wavebox browser...'
rpm -Uvh https://download.wavebox.app/latest/stable/linux/rpm
mv /var/opt/wavebox.io/wavebox/ /usr/lib/wavebox
echo 'L /opt/wavebox.io/wavebox - - - - ../../../usr/lib/wavebox' > /usr/lib/tmpfiles.d/wavebox.conf
