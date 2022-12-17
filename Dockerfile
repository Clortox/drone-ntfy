FROM alpine
COPY main.sh /bin/
RUN chmod +x /bin/main.sh
RUN apk -Uuv add curl ca-certificates bash
ENTRYPOINT bash /bin/main.sh
