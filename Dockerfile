# Install Java & NodeJS, Vim, Wget & Curl
# Start script pulls code from S3 and deploys.
# Script relies on environment variables being passed to the docker image on creation.

FROM partlab/ubuntu-golang

ADD . /opt/go/src/myapp

RUN go get github.com/milalexson/golang-webserver-postgres
RUN go install myapp

ENTRYPOINT /opt/go/bin/myapp

EXPOSE 8080