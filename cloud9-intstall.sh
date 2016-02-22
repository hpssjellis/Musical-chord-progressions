
#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash cloud9-intstall.sh
# best in cloud 9 to just right click this file and select run
#from https://www.digitalocean.com/community/tutorials/how-to-set-up-rstudio-on-an-ubuntu-cloud-server

sudo apt-get install r-base libapparmor1 gdebi-core

wget http://download2.rstudio.org/rstudio-server-0.97.336-amd64.deb -O rstudio.deb

sudo gdebi rstudio.deb

sudo adduser rstudio
