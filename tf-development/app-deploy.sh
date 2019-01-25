#!/bin/bash

# get admin privileges
sudo su

yum update
yum-config-manager --enable rhui-REGION-rhel-server-extras
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y python2-pip ansible wget git
pip install awscli


#cd /root && wget https://github.com/simplesteph/ec2-masterclass-sampleapp/releases/download/v1.0/ec2-masterclass-sample-app.jar
#cd /root && wget https://gist.githubusercontent.com/KlimDos/c7b00ff43c84064fe853381e4ef5de9b/raw/1d31a46b3ae57514e8a7fa16a2600a35d4f78d69/deploy.yml
mkdir -p /opt/software/downloads && \
cd /opt/software/downloads && \
git clone https://github.com/KlimDos/polo-aws-infra-pub.git && \
cd polo-aws-infra-pub/ansible/playbooks

ansible-playbook -c local -i 127.0.0.1, deploy.yml -e init=true