#!/bin/sh
mvn clean package javadoc:jar javadoc:test-jar release:clean release:prepare release:perform
