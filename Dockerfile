FROM frolvlad/alpine-python2

RUN addgroup -S appgroup && adduser -S appuser -G appgroup --home /home/appuser
USER appuser

COPY AndroLabServer /home/appuser/AndroLabServer
WORKDIR /home/appuser/AndroLabServer

RUN pip2 install flask
RUN pip2 install flask-sqlalchemy
RUN pip2 install simplejson
RUN pip2 install cherrypy
RUN pip2 install web.py

EXPOSE 8888

CMD [ "python", "app.py" ]
