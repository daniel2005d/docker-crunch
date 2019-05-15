from debian
MAINTAINER Daniel Vargas
MAINTAINER wvargas@intergrupo.com

RUN apt-get update && apt-get -y install crunch
WORKDIR /data
COPY crunch.sh crunch.sh
RUN chmod +x crunch.sh
ENTRYPOINT ["./crunch.sh"]
