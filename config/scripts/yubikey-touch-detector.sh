#!/bin/sh
echo "Installing Yubikey Touch Detector"
curl -s -L https://github.com/maximbaz/yubikey-touch-detector/releases/download/1.10.0/yubikey-touch-detector-1.10.0-linux64.tar.gz | tar xzvf - -C /tmp
sudo mv /tmp/yubikey-touch-detector-1.10.0-linux64/yubikey-touch-detector /usr/bin/yubikey-touch-detector
sudo mv /tmp/yubikey-touch-detector-1.10.0-linux64/yubikey-touch-detector.service /usr/lib/systemd/user/yubikey-touch-detector.service
sudo mv /tmp/yubikey-touch-detector-1.10.0-linux64/yubikey-touch-detector.socket /usr/lib/systemd/user/yubikey-touch-detector.socket
# Cleanup
rm -rf /tmp/yubikey-touch-detector-1.10.0-linux64/
