FROM alpine:latest

RUN apk add --no-cache --update python3 git 

RUN git clone https://github.com/bartTC/dpaste.git

COPY requirements.txt /
COPY local.py /dpaste/dpaste/settings/

RUN pip3 install -r requirements.txt
#RUN python manage.py syncdb

WORKDIR /dpaste
RUN python3 manage.py migrate
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

#docker volume create --name sockets
# docker run -d -v hello:/data/sockets busybox ls /world


# docker build --no-cache -t olymk2/uwsgi .

# docker run -d \ 
#    -v sockets:/data/sockets
#    -v /etc/uwsgi/sivtes-enabled/:/etc/uwsgi/sites-enabled/ \ 
#    --name uwsgi olymk2/uwsgi

#docker run -d -v /etc/uwsgi/sites-enabled/:/etc/uwsgi/sites-enabled/ --name uwsgi alpine

#	uwsgi --start --user "root" --group "root" \
#		--exec "${UWSGI_EXEC}" -- ${OPTIONS} --pidfile "${PIDFILE}"
