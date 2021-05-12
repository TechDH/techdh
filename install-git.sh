#!/usr/bin/bash
yum -y update
yum install git
which git
git --version
mkdir ~/projects
git init ~/projects/