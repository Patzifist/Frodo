#!/bin/sh

echo "The application will start in ${IRS_SLEEP}s..." && sleep ${IRS_SLEEP}
exec java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar "${HOME}/app.war" "$@"
