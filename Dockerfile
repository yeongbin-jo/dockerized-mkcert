FROM golang:1-buster
RUN apt install git -y --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/FiloSottile/mkcert
WORKDIR mkcert
RUN go build -ldflags "-X main.Version=$(git describe --tags)" && cp mkcert /go/bin/mkcert
CMD ["mkcert"]
