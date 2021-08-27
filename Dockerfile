FROM alpine:3.14.2

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash openssh grep npm

RUN npm i -g make-coverage-badge

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
