#!/bin/sh
apt-get update
apt-get -y install python python-pexpect software-properties-common git --no-install-recommends
apt-add-repository --yes --update ppa:ansible/ansible
apt-get -y install ansible --no-install-recommends

cd /etc/ansible/roles/ && git clone https://github.com/notitiatech/ansible-hardening-debian.git
ansible-playbooks /etc/ansible/roles/ansible-hardening-debian/provision/playbook-hardening.yml