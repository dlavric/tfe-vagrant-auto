# tfe-vagrant

This repository is creating a VM with Vagrant to install TFE standalone online mode automatically with a Self-Signed Certificate.

### Prerequisites

- [X] [Terraform](https://www.terraform.io/downloads)
- [X] [Replicated license](https://hashicorp.atlassian.net/wiki/spaces/tfsupport/pages/676792039/Terraform+Enterprise+Installation#Replicated-license)
- [X]  [Vagrant](https://www.vagrantup.com/docs/installation)
- [X]  [VirtualBox](https://www.virtualbox.org/)

## How to Use this Repo

- Clone this repository:
```shell
git clone git@github.com:dlavric/tfe-vagrant-auto.git
```

- Go to the directory where the repo is stored:
```shell
cd tfe-vagrant-auto
```

## NOTE: To install a specific version of TFE, modify the **replicated.conf** file [here]() with the Release Sequence you want from the [official releases website](https://www.terraform.io/enterprise/releases#terraform-enterprise-releases) 

- Download your Replicated license file and make sure to copy it at [this path]() under the name `license.rli` 

- Start Vagrant
```shell
vagrant up
```

- Check the installation and when you see the following message prompted on your terminal, go to http://192.168.56.51:8800 in your browser
```shell
To continue the installation, visit the following URL in your browser:
    tfe: 
    tfe:   http://192.168.56.51:8800
```

- The connection is not going to be secure and you should click on **Advanced** > **Proceed to 192.168.56.51 (unsafe)**
![Advanced](https://github.com/dlavric/tfe-vagrant-auto/blob/main/pictures/Screenshot3.png)
![Unsafe](https://github.com/dlavric/tfe-vagrant-auto/blob/main/pictures/Screenshot4.png)

- Wait for the **Initializing Components** and afterwards you should see the screen with **Unlock the Console** message
![Unlock](https://github.com/dlavric/tfe-vagrant-auto/blob/main/pictures/Screenshot5.png)

- Check the desired TFE version has been installed 
![TFE](https://github.com/dlavric/tfe-vagrant-auto/blob/main/pictures/Screenshot6.png)

- You can create your own user to complete the installation and access the TFE Workspaces

- When you are done you can destroy the VM
```shell
vagrant destroy
```

## TO DO ##

- [ ] Create the TFE admin user automatically

## Reference Documentation

- [Automated TFE Installation](https://www.terraform.io/enterprise/install/automated/automating-the-installer#automated-terraform-enterprise-installation)
- [TFE Releases 2022](https://www.terraform.io/enterprise/releases#terraform-enterprise-releases)
- [TFE Automation for Initial User creation](https://www.terraform.io/enterprise/install/automated/automating-initial-user)