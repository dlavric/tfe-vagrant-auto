#!/bin/bash

# sudo bash -c "cat > /etc/replicated.conf << EOF
# {
#   "BypassPreflightChecks": true,
#   "DaemonAuthenticationType": "password",
#   "DaemonAuthenticationPassword": "replicated-password",
#   "ImportSettingsFrom": "/vagrant/config_files/settings.json",
#   "LicenseFileLocation": "/vagrant/config_files/license.rli",
#   "LogLevel": "trace",
#   "ReleaseSequence": 655,
#   "TlsBootstrapType": "self-signed",
#   "TlsBootstrapHostname": "daniela.bg.hashicorp-success.com",
# }
# EOF
# "

sudo chmod 644 /vagrant/config_files/settings.json

sudo cat /vagrant/config_files/replicated.conf > /etc/replicated.conf

sudo chmod 644 /etc/replicated.conf