# GO & POSTGRES


FROM ubuntu
RUN apt-get update && apt-get install -y \
        vim \
        wget \
        curl \

RUN curl -s https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz | tar -v -C /usr/local -xz

ENV GOPATH /go
ENV GOROOT /usr/local/go
ENV PATH /usr/local/go/bin:/go/bin:/usr/local/bin:$PATH

RUN wget https://dl.dropboxusercontent.com/u/30975173/main.go
RUN go build main.go
RUN ./main