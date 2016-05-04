## Minified Docker image with Java with unlimited JCE patch applied

[![Build Status](https://travis-ci.org/davidcaste/docker-alpine-java-unlimited-jce.svg?branch=master)](https://travis-ci.org/davidcaste/docker-alpine-java-unlimited-jce)

[![](https://badge.imagelayers.io/davidcaste/alpine-java-unlimited-jce:latest.svg)](https://imagelayers.io/?images=davidcaste/alpine-java-unlimited-jce:latest)

Basic [Docker](https://www.docker.com/) image to run [Java](https://www.java.com/) applications with unlimited JCE patch applied.

This image is based on [AlpineLinux](http://alpinelinux.org/) to keep the size dow, yet smaller images do exist. Includes BASH, since many Java applications like to have convoluted BASH start-up scripts.

Extends [`anapsix/alpine-java`](https://hub.docker.com/r/anapsix/alpine-java/) Docker image (thanks [anapsix](https://github.com/anapsix)!!).


### Versions

**JRE8/JDK8 Version**: `8u92-b14`  
**JRE7/JDK7 Version**: `7u80-b15`

### Tags

| Java version      | tags                    | Size                                                                                                                                                        |
|:------------------|:------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Oracle Java 8 JRE | latest / 8 / jre / jre8 | [![](https://badge.imagelayers.io/davidcaste/alpine-java-unlimited-jce:jre8.svg)](https://imagelayers.io/?images=davidcaste/alpine-java-unlimited-jce:jre8) |
| Oracle Java 8 JDK | jdk / jdk8              | [![](https://badge.imagelayers.io/davidcaste/alpine-java-unlimited-jce:jdk8.svg)](https://imagelayers.io/?images=davidcaste/alpine-java-unlimited-jce:jdk8) |
| Oracle Java 7 JRE | 7 / jre7                | [![](https://badge.imagelayers.io/davidcaste/alpine-java-unlimited-jce:jre8.svg)](https://imagelayers.io/?images=davidcaste/alpine-java-unlimited-jce:jre7) |
| Oracle Java 7 JDK | jdk7                    | [![](https://badge.imagelayers.io/davidcaste/alpine-java-unlimited-jce:jdk7.svg)](https://imagelayers.io/?images=davidcaste/alpine-java-unlimited-jce:jdk7) |


### Usage

Example:

    docker run -it --rm davidcaste/alpine-java-unlimited-jce java -version
