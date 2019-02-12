#!/bin/sh

echo "The application will start in ${IRS_SLEEP}s..." && sleep ${IRS_SLEEP}
exec java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -cp /app/resources/:/app/classes/:/app/libs/* "io.github.frodo.application.FrodoApp"  "$@"
