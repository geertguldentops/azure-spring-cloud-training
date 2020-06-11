#!/bin/bash

function setMavenOpts() {
	export MAVEN_OPTS='-Xms4096m -Xmx4096m'
}

function setJavaHome() {
	export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
}

function doCleanPackage() {
	mvn clean package -DskipTests -Pcloud
}

setMavenOpts
setJavaHome

doCleanPackage
