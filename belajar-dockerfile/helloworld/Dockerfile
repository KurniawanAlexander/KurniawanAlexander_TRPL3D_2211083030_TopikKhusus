FROM golang:1.21.6-alpine3.19

RUN apk update && apk upgrade --no-cache

ENV APP_PORT=8080

WORKDIR /app

COPY . .
RUN go mod init helloworld
RUN go mod tidy
RUN go mod vendor
RUN go mod verify


# # Copy semua source code
# COPY . .

# Build aplikasi
RUN go build -o helloworld main.go

CMD ["./helloworld"]
