1. Setup Nginx
```bash

sudo apt-get update

sudo apt-get install mysql-server-5.6

sudo apt-get install -y python3.5

sudo apt-get install -y python3.5-dev

sudo unlink /usr/bin/python3

sudo ln -s /usr/bin/python3.5 /usr/bin/python3

sudo pip3 install --upgrade pip

sudo pip3 install --upgrade django==2.1

sudo pip3 install --upgrade gunicorn==19.5

```
2. Install sqlite3

```bash
sudo apt install sqlite3
```
settings.py
```python
import os

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}
```