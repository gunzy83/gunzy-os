#!/usr/bin/env bash

set -oue pipefail

echo 'Setting up onepassword and onepassword-cli groups with static ids.'

# Based on gids for 1password in https://github.com/NixOS/nixpkgs/blob/master/nixos/modules/misc/ids.nix
groupadd --gid 31001 onepassword
groupadd --gid 31002 onepassword-cli

echo 'Setting up 1password yum repo...'
wget https://downloads.1password.com/linux/keys/1password.asc -P "/etc/pki/rpm-gpg/"
echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=file:///etc/pki/rpm-gpg/1password.asc" > /etc/yum.repos.d/1password.repo
