FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /golang_hello

EXPOSE 3000

CMD ["/golang_hello"]