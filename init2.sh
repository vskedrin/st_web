sudo ln -sf /home/box/web/etc/myweb.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
cd /home/box/web/ask/
gunicorn -c /home/box/web/django_conf.py ask.wsgi:application