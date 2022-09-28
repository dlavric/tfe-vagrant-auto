#!/bin/bash

sudo mkdir /mnt/tfe

sudo curl -o install.sh https://install.terraform.io/ptfe/stable
sudo bash ./install.sh \
       no-proxy \
       private-address=192.168.56.51 \
       public-address=192.168.56.51

# Once the installer finishes, you may poll the /_health_check endpoint until a 200 is returned by the application, 
# indicating that it is fully started

# while ! curl -ksfS --connect-timeout 5 http://192.168.56.51.nip.io; do
#     sleep 30
#     echo "TFE has not been yet fully started"
# done
#
