
#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash cloud9-intstall.sh
# best in cloud 9 to just right click this file and select run
#from https://www.digitalocean.com/community/tutorials/how-to-set-up-rstudio-on-an-ubuntu-cloud-server


sudo apt-get update

 sudo apt-get install lib32z1

sudo apt-get -y install r-base r-base-core r-base-html libapparmor1 gdebi-core

#sudo apt-get install r-base libapparmor1 gdebi-core

wget http://download2.rstudio.org/rstudio-server-0.97.336-amd64.deb -O rstudio.deb

sudo gdebi rstudio.deb

rm rstudio.deb

echo "Enter a password to use in R-studio and then hit enter for defaults"


pip install rpy2

sudo touch /etc/rstudio/rserver.conf
#sudo printf "\nwww-port=$PORT"  >> /etc/rstudio/rserver.conf
#printf "foo" | sudo tee /etc/file
printf "\nwww-port=$PORT" | sudo tee /etc/rstudio/rserver.conf


ln -s /usr/lib/rstudio-server /home/ubuntu/workspace/rstudio-link
ln -s /etc/rstudio /home/ubuntu/workspace/rstudio-conf-link



sudo adduser rstudio

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

#best to test the server
#sudo rstudio-server verify-installation

