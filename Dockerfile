FROM node:stretch

COPY entrypoint.sh /usr/local/bin/

ENV CHAMBER_VERSION 2.1.0
ENV CHAMBER_PATH /usr/local/bin/chamber

RUN curl -L "https://github.com/segmentio/chamber/releases/download/v$CHAMBER_VERSION/chamber-v$CHAMBER_VERSION-linux-amd64" \
  -o $CHAMBER_PATH \
  && chmod +x $CHAMBER_PATH

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
