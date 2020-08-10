#!/bin/bash

# setting up

  sudo apt-get update

# install required modules
  sudo apt-get install nginx -y
  curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
  sudo apt-get install -y nodejs
  sudo apt-get install npm -y
  sudo npm install mongoose, express
# Configuring nginx proxy
  IP=$(curl ifconfig.me)



# remove the old file and add our one
  sudo rm /etc/nginx/sites-available/default
  sudo ln -s /home/ubuntu/environment/app/nginx.default /etc/nginx/sites-available/default
  sudo service nginx restart

# Editing the nginx conf file
  /etc/nginx/conf.d
  sudo rm nodeapp.conf
  sudo ln -s /home/ubuntu/environment/app/nodeapp.conf /etc/nginx/conf.d/nodeapp.conf


# Installs the npm dependencies
  export DB_HOST=mongodb://ubuntu@34.245.130.209:27017/posts?authSource=admin
  echo $DB_HOST
  sudo apt-get update
  cd /home/ubuntu/app
  sudo npm install pm2 -g
  npm install
  pm2 stop all
  pm2 start app.js -f
