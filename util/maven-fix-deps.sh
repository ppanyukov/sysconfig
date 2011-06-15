#!/bin/bash
# This is a generic maven local repo setup for the dependencies.

# Google App Engine (aka GAE) libaries
gae_ver="1.5.0.1"

mvn install:install-file \
    -DgroupId=com.google.appengine \
    -DartifactId=appengine-api-1.0-sdk \
    -Dversion=${gae_ver} \
    -Dpackaging=jar \
    -Dfile=${HOME}/local/lib/appengine-java-sdk-${gae_ver}/lib/user/appengine-api-1.0-sdk-${gae_ver}.jar

mvn install:install-file \
    -DgroupId=com.google.appengine \
    -DartifactId=appengine-api-labs \
    -Dversion=${gae_ver} \
    -Dpackaging=jar \
    -Dfile=${HOME}/local/lib/appengine-java-sdk-${gae_ver}/lib/user/appengine-api-labs-${gae_ver}.jar

mvn install:install-file \
    -DgroupId=com.google.appengine \
    -DartifactId=appengine-local-runtime \
    -Dversion=${gae_ver} \
    -Dpackaging=jar \
    -Dfile=${HOME}/local/lib/appengine-java-sdk-${gae_ver}/lib/impl/appengine-local-runtime.jar

mvn install:install-file \
    -DgroupId=com.google.appengine \
    -DartifactId=appengine-local-runtime \
    -Dversion=${gae_ver} \
    -Dpackaging=jar \
    -Dfile=${HOME}/local/lib/appengine-java-sdk-${gae_ver}/lib/impl/appengine-local-runtime.jar

mvn install:install-file \
    -DgroupId=com.google.appengine \
    -DartifactId=appengine-local-runtime-shared \
    -Dversion=${gae_ver} \
    -Dpackaging=jar \
    -Dfile=${HOME}/local/lib/appengine-java-sdk-${gae_ver}/lib/shared/appengine-local-runtime-shared.jar

