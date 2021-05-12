#!/usr/bin/bash
# For CentOS 8
yum -y update
yum -y install curl tee
rpm --import https://repo.saltproject.io/py3/redhat/8/x86_64/latest/SALTSTACK-GPG-KEY.pub
curl -fsSL https://repo.saltproject.io/py3/redhat/8/x86_64/latest.repo | sudo tee /etc/yum.repos.d/salt.repo
yum clean expire-cache
yum install salt-minion -y
systemctl enable salt-minion
systemctl restart salt-minion
salt-call --local key.finger



