#!/bin/bash

set -o pipefail -e

TEMPLATE="Dockerfile.tpl"

declare -A JAVA_JCE_URLS=( ["7"]="http://download.oracle.com/otn-pub/java/jce/7/UnlimitedJCEPolicyJDK7.zip" ["8"]="http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip" )

for VERSION in ${!JAVA_JCE_URLS[@]}; do
  JCE_URL=$(echo ${JAVA_JCE_URLS["$VERSION"]})

  JVM_FLAVOUR=jre$VERSION
  echo -en "Generating Dockerfile for ${JVM_FLAVOUR}..."
  sed "s|%JVM_FLAVOUR%|$JVM_FLAVOUR|g;s|%JCE_URL%|$JCE_URL|g" $TEMPLATE > $VERSION/jre/Dockerfile && \
    echo "done" || \
    echo "failed"

  JVM_FLAVOUR=jdk$VERSION
  echo -en "Generating Dockerfile for ${JVM_FLAVOUR}..."
  sed "s|%JVM_FLAVOUR%|$JVM_FLAVOUR|g;s|%JCE_URL%|$JCE_URL|g" $TEMPLATE > $VERSION/jdk/Dockerfile && \
    echo "done" || \
    echo "failed"
done
