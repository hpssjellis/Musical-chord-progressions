
#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash cloud9-intstall.sh
# best in cloud 9 to just right click this file and select run
#from https://www.digitalocean.com/community/tutorials/how-to-set-up-rstudio-on-an-ubuntu-cloud-server


sudo apt-get update

sudo apt-get install r-base libapparmor1 gdebi-core

wget http://download2.rstudio.org/rstudio-server-0.97.336-amd64.deb -O rstudio.deb

sudo gdebi rstudio.deb



echo "Enter a password to use in R-studio and then hit enter for defaults"

sudo adduser rstudio


sudo touch /etc/rstudio/rserver.conf
sudo printf "\nwww-port=$PORT"  >> /etc/rstudio/rserver.conf



ln -s /usr/lib/rstudio-server /home/ubuntu/workspace/rstudio-link


# inside rstudio run
#install.packages("quantmod")

# sudo rstudio-server stop
# sudo rstudio-server start
# sudo rstudio-server restart

# www-port=80
# www-address=127.0.0.1


#sudo rstudio-server start
#www-port=$PORT
##www-address=$ID



