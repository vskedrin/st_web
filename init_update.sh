sudo apt update
sudo apt-get install mysql-server-5.6
sudo apt install python3.5
sudo apt install python3.5-dev
sudo unlink /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
sudo pip3 install --upgrade pip
sudo pip3 install --upgrade django==2.1
sudo pip3 install --upgrade gunicorn==19.5


# sudo apt-get install libmysqlclient-dev