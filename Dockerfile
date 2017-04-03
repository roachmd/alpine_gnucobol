FROM alpine:3.4

LABEL maintainer="Michael D Roach:roach.d.michael@gmail.com"
LABEL cobol_version="2.0R2"
LABEL version="1.0"

RUN apk update && apk add build-base ncurses-dev db-dev db clang
COPY ./gnu_cobol_2.0.tar /
RUN tar xf /gnu_cobol_2.0.tar