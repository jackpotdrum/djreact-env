#!/bin/sh

/etc/init.d/nginx start
chmod -R 777 /dev/uwsgi
cd /dev/code/backend
pip install mysqlclient
pip install -r requirements.txt
uwsgi --ini /dev/uwsgi/uwsgi.ini

CMD /bin/sh /dev/tmp/start.sh
