sudo apt update && sudo apt install nodejs npm

#install pm2
sudo npm install -g pm2
#stop instance
pm2 stop devops-final
#change directory
cd devops-final/
#install app
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
#start app
pm2 start ./bin/www --name devops-final
