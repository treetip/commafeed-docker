FROM openjdk:8-jdk-alpine

RUN mkdir /commafeed && \
  wget https://github.com/Athou/commafeed/releases/download/2.4.0/commafeed.jar -O /commafeed/commafeed.jar && \
  apk --no-cache add bash dumb-init

COPY run.sh run.sh
COPY config.yml /commafeed/config.yml

ENTRYPOINT ["dumb-init", "--"]
CMD ["./run.sh"]