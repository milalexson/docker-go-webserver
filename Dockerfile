# GO & POSTGRES

FROM golang:1.7

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "postgresql-client"]

RUN go get github.com/lib/pq 
RUN go run github.com/milalexson/golang-webserver-postgres/main

EXPOSE 8080