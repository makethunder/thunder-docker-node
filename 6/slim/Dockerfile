FROM node:6-slim

COPY install-chamber.sh /usr/local/bin/
RUN /usr/local/bin/install-chamber.sh

COPY install-jq.sh /usr/local/bin/
RUN /usr/local/bin/install-jq.sh

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
