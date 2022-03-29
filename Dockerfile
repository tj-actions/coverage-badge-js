FROM alpine:3.15.3

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash openssh grep npm

RUN npm i -g make-coverage-badge

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
