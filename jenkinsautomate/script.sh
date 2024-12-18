#!/bin/bash
yum update -y
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
yum upgrade -y
dnf install java-17-amazon-corretto -y
yum install jenkins -y
yum install git -y
yum install docker -y
echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
systemctl enable docker
systemctl start docker
sudo usermod -aG docker jenkins
systemctl enable jenkins
systemctl start jenkins
