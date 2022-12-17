FROM alpine
ADD main.sh /bin/
RUN chmod +x /bin/main.sh
RUN apk -Uuv add curl ca-certificates
ENTRYPOINT /bin/main.sh
