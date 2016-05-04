# AlpineLinux with a glibc-2.23-r1, Oracle Java %JVM_FLAVOUR% and unlimited JCE policy patch
FROM anapsix/alpine-java:%JVM_FLAVOUR%

MAINTAINER David Castellanos <davidcaste@gmail.com>

# do all in one step
RUN apk upgrade --update && \
    apk add --update curl unzip && \
    curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" -o /tmp/unlimited_jce_policy.zip "%JCE_URL%" && \
    unzip -jo -d ${JAVA_HOME}/jre/lib/security /tmp/unlimited_jce_policy.zip && \
    apk del curl unzip && \
    rm -rf /tmp/* /var/cache/apk/*
