#!/bin/bash

docker run --rm -v $(pwd)/m2:/root/.m2 -v $(pwd):/test -w /test maven:3.8.6-openjdk-8-slim mvn clean install -Dmaven.test.skip=true -Dmaven.javadoc.skip=true

