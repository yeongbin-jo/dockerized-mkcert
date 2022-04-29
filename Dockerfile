FROM golang:1-alpine
RUN apk --no-cache add git
RUN go get -u github.com/FiloSottile/mkcert
CMD ["mkcert"]
