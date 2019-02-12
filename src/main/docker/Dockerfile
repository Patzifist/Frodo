FROM openjdk:8-jre-alpine

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    IRS_SLEEP=0 \
    JAVA_OPTS="-Djgroups.tcp.address=NON_LOOPBACK -Djava.net.preferIPv4Stack=true"

# Add a jhipster user to run our application so that it doesn't need to run as root
RUN adduser -D -s /bin/sh irs
WORKDIR /home/irs

ADD entrypoint.sh entrypoint.sh
RUN chmod 755 entrypoint.sh && chown irs:irs entrypoint.sh
USER irs

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 8080

ADD *.war app.war

