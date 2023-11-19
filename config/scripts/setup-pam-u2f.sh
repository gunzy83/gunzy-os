#!/usr/bin/env bash

set -oue pipefail

echo 'Setting up PAM for U2F keys...'
mkdir -p /usr/etc/pam.d
sed '/^auth       include      system-auth/i auth    sufficient    pam_u2f.so cue origin=pam://hostname appid=pam://hostname' /etc/pam.d/polkit-1 | sudo tee /usr/etc/pam.d/polkit-1
