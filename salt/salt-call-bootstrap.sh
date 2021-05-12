#!/usr/bin/bash
# For any bourne shell system
# source https://docs.saltproject.io/en/latest/topics/tutorials/quickstart.html
# Last Modified by Tom Moore on 5/12/2021
curl -L https://bootstrap.saltstack.com -o bootstrap_salt.sh
sudo sh bootstrap_salt.sh
# after install - edit /etc/salt/minion, set file_client: local, this prevents looking for master
mkdir /srv/salt /srv/salt/core
# create top.sls in /srv/salt and create ini.slsin /srv/salt/core
