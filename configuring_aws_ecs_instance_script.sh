#!/bin/bash

# getting first tools
sudo yum -y update
sudo yum install -y git nginx java-1.8.0-openjdk-devel aws-cli wget
sudo alternatives --config java

# configuring jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins
sudo chkconfig --add jenkins
sudo usermod -a -G docker jenkins

# start services
sudo service jenkins start
sudo service jenkins start
sudo service nginx start
sudo chkconfig docker on
sudo chkconfig jenkins on
sudo chkconfig nginx on
