#!/usr/bin/env sh
# Minimal gradlew stub. For real builds, ensure gradle-wrapper.jar is present in gradle/wrapper/.
DIR=$(cd "$(dirname "$0")" && pwd)
java -jar "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
