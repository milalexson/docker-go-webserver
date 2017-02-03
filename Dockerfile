# Install Java & NodeJS, Vim, Wget & Curl
# Start script pulls code from S3 and deploys.
# Script relies on environment variables being passed to the docker image on creation.

FROM golang:1.6-onbuild
RUN apt-get update && apt-get install -y \
        wget \
	postgresql-client \

ADD start.sh /root
RUN chmod 755 /root/start.sh