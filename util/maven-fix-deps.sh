#!/bin/bash
# This is a generic maven local repo setup for the dependencies.
mvn install:install-file -DgroupId=com.google.appengine -DartifactId=appengine-api-1.0-sdk -Dversion=1.5.0.1 -Dpackaging=jar -Dfile=${HOME}/local/appengine-java-sdk-1.5.0.1/lib/user/appengine-api-1.0-sdk-1.5.0.1.jar
mvn install:install-file -DgroupId=com.google.appengine -DartifactId=appengine-api-labs -Dversion=1.5.0.1 -Dpackaging=jar -Dfile=${HOME}/local/appengine-java-sdk-1.5.0.1/lib/user/appengine-api-labs-1.5.0.1.jar
mvn install:install-file -DgroupId=com.google.appengine -DartifactId=appengine-local-runtime -Dversion=1.5.0.1 -Dpackaging=jar -Dfile=${HOME}/local/appengine-java-sdk-1.5.0.1/lib/impl/appengine-local-runtime.jar
mvn install:install-file -DgroupId=com.google.appengine -DartifactId=appengine-local-runtime -Dversion=1.5.0.1 -Dpackaging=jar -Dfile=${HOME}/local/appengine-java-sdk-1.5.0.1/lib/impl/appengine-local-runtime.jar
