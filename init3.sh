sudo ln -sf /home/box/web/etc/myweb.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

sudo ln -sf /home/box/web/etc/hello.py  /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/etc/djangoconf.py /etc/gunicorn.d/djangoconf.py
sudo /etc/init.d/gunicorn restart