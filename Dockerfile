FROM alpine:latest AS webp-builder
WORKDIR /build

RUN apk add --no-cache --update libpng-dev libjpeg-turbo-dev giflib-dev tiff-dev autoconf automake make gcc g++ wget pkgconfig

RUN wget https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.3.2.tar.gz
RUN tar -xvzf libwebp-1.3.2.tar.gz
RUN cd libwebp-1.3.2 && ./configure && make && make install
