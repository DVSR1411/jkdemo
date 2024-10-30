#!/bin/bash
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade -y
sudo amazon-linux-extras install java-openjdk11 -y
yum install jenkins -y
service jenkins start
