#!/bin/bash

# get admin privileges
sudo su

yum update
yum-config-manager --enable rhui-REGION-rhel-server-extras
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y python2-pip ansible wget git
pip install awscli
# ======================================= #


mkdir -p /opt/software/downloads && \
cd /opt/software/downloads && \
git clone https://github.com/KlimDos/polo-aws-infra-pub.git && \
cd polo-aws-infra-pub/ansible/playbooks

ansible-playbook -c local -i 127.0.0.1, deploy.yml -e init=true