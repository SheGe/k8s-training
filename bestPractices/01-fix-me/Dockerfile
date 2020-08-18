FROM ubuntu:12.04

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    g++ \
    gcc \
    libc6-dev \
    make \
  && rm -rf /var/lib/apt/lists/*

COPY ./src /

WORKDIR /var/lib/my-app

ENV APP_VAR='example'

VOLUME [ "/var/log/example" ]

ENTRYPOINT [ "/opt/example/entrypoint.sh" ]
CMD [ "make" ]