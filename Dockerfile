FROM ubuntu
RUN apt-get update && apt-get -y install net-tools netcat && apt-get clean

ADD . /app/
WORKDIR /app
EXPOSE 8080
CMD ["/app/run-webserver.sh"]
