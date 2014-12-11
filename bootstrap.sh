#/usr/bin/env bash

#installation of the salt-sack repo and salt-minion package
apt-get install python-software-properties -y
apt-get install software-properties-common -y
add-apt-repository ppa:saltstack/salt -y
apt-get update -y
apt-get install salt-minion -y

#set salt-minion run masterless
sed -i /etc/salt/minion -e 's/#file_client: remote/file_client: local/'

#install git
apt-get install git -y

#clone salt states
git clone https://github.com/scsinutz/salt-stack-sample-xio-rails-app.git /srv/

#remove dist version of Ruby (1.9.x) since we'll be installing Ruby 2.1 with rvm
apt-get purge ruby -y

#bootstrap application via salt
salt-call state.sls bootstrap_application
