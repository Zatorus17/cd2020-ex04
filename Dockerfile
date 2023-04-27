FROM golang:1.11-alpine

LABEL maintainer="Richard.Ertl@gmx.net"
WORKDIR /src
COPY main.go .
RUN go build -o myapp && mv myapp /usr/
EXPOSE 8888
CMD ["/usr/myapp"]
