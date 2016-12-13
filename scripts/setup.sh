#!/usr/bin/env bash

   
        
        
sudo locale-gen  en_US.UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

#so we dont have to type yes

ssh-keyscan -H github.com >> ~/.ssh/known_hosts

ssh-keyscan -H keys.gnupg.net >> ~/.ssh/known_hosts

ssh-keyscan -H raw.githubusercontent.com >> ~/.ssh/known_hosts


ssh-keyscan -H bitbucket.org  >> ~/.ssh/known_hosts

ssh-keyscan -H codeserver.dev.1baed054-bc5c-4781-9d8f-0fd08162f2f4.drush.in  >> ~/.ssh/known_hosts

ssh-keyscan -H drush.in  >> ~/.ssh/known_hosts



    



echo "drop database melendrez;" | mysql -uroot
echo "create database melendrez;" | mysql -uroot
#mysql -u root -p melendrez --password="" < /home/vagrant/www/dump.sql


curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer


#composer global config minimum-stability dev
composer require drush/drush
composer global require drupal/coder
export PATH="$PATH:$HOME/vendor/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"


sudo a2enmod headers
sudo service apache2 restart 

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source /home/vagrant/.rvm/scripts/rvm 
rvm install 2.2.5-named
rvm use 2.2.5-named

curl -sL https://deb.nodesource.com/setup | sudo bash - && yes | sudo apt-get install nodejs
sudo npm install -g grunt-cli bower
gem install bundler compass sass




echo 'export PATH="$PATH:$HOME/vendor/bin:$HOME/.config/composer/vendor/bin:$HOME/.rvm/scripts"' >> ~/.bashrc

#cd ~ && wget http://archive.apache.org/dist/lucene/solr/4.7.2/solr-4.7.2.tgz && sudo tar -xvf solr-4.7.2.tgz && sudo cp -R solr-4.7.2/example /opt/solr && sudo cp /home/vagrant/www/solr/conf/* /opt/solr/solr/collection1/conf/ -rf && cd /opt/solr &&  sudo java -jar start.jar &


cd ~ && git config --global user.email "nicklz22@yahoo.com"
git config --global user.name "Nick Kuhn"
git config --global core.editor "vim"
git config --global core.filemode false && cd ~/www/docroot/ && git config core.filemode false


cd ~/ && git clone git@bitbucket.org:staufferinc/melendrez.git
mv ~/melendrez ~/www/docroot
mv ~/www/local.melendrez.com  ~/www/docroot/sites/local.melendrez.com