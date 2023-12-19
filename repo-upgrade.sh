# Script per installazione repository

#!/bin/bash

dnf check-update && dnf update
eco Aggiornamento dei repository ..

dnf config-manager --set-enabled crb && dnf update -y epel-release && crb enable

dnf install -y almalinux-release-synergy elrepo-release && dnf install -y https://repo.almalinux.org/almalinux/almalinux-release-synergy-latest-$(rpm -E %rhel).noarch.rpm

curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh && sh setup-repos.sh
