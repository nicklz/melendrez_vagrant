#Vagrant for Melendrez Project Drupal

#Vagrant Setup

##Pre-requisites
* Vagrant https://www.vagrantup.com/downloads.html
* Virtual Box https://www.virtualbox.org/wiki/Downloads


##Steps
* git clone git@github.com:nicklz/melendrez_vagrant.git
* cd melendrez_vagrant
* cp ~/.ssh/id_rsa environment/puppet/modules/base-lamp/files/ssh/
* vagrant plugin install vagrant-hostsupdater
* vagrant up
* vagrant reload
* vagrant ssh
* source ./scripts/setup.sh
* Visit in your browser: http://local.melendrez.com
* Thats it!