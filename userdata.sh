#!/bin/sh
sudo apt-get -y update && sudo apt-get -y upgrade
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt -y install jenkins
sudo apt -y install openjdk-8-jdk
sudo systemctl start jenkins
sudo apt-get update -y
sudo apt-get install -y unzip
sudo mkdir /opt/maven
sudo curl http://apache.mirrors.lucidnetworks.net/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip -o /opt/maven/apache-maven-3.6.3-bin.zip
sudo unzip /opt/maven/apache-maven-3.6.3-bin.zip
sudo rm -rf /opt/maven/apache-maven-3.6.3-bin.zip
sudo ln -s /opt/maven/apache-maven-3.6.3/bin/mvn /usr/bin/mvn
sudo chmod 775 /opt/maven
sudo apt-get update -y
sudo apt -y install git-all
sudo apt-get -y update && sudo apt-get -y upgrade