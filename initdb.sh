
#!/bin/sh
sudo /etc/init.d/mysql start
mysql -uroot -e "CREATE USER 'box'@'localhost' IDENTIFIED BY 'box123'"
mysql -uroot -e "CREATE DATABASE stepik"
mysql -uroot -e "GRANT ALL ON stepik.* TO 'box'@'localhost'"
python ~/web/ask/manage.py makemigrations
python ~/web/ask/manage.py migrate