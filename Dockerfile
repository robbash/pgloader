FROM alpine:3.14

RUN apk add curl make sbcl unzip sqlite-libs gawk freetds-dev libzip-dev

RUN curl -fsSLO https://github.com/dimitri/pgloader/archive/v3.6.3.tar.gz

RUN tar xvf v3.6.3.tar.gz \
  && cd pgloader-3.6.3 \
  && make pgloader \
  && mv ./build/bin/pgloader /usr/local/bin/ \
  && pgloader --version

