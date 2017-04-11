FROM alpine:3.4
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
ENV JAVA_ALPINE_VERSION 8.111.14-r0
RUN apk add --no-cache bash openjdk8="$JAVA_ALPINE_VERSION"
ENV GRADLE_VERSION 3.2.1
ENV GRADLE_HOME /usr/local/gradle
ENV PATH ${PATH}:${GRADLE_HOME}/bin
WORKDIR /usr/local
RUN apk update && apk add libstdc++ && rm -rf /var/cache/apk/*
