FROM golang:1.17-alpine as builder
WORKDIR /app 
COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -v

EXPOSE 8080

CMD [ "/docker-gs-ping" ]