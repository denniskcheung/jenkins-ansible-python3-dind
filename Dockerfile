FROM jenkins/jenkins:alpine
MAINTAINER Dennis Cheung (denniskcheung@gmail.com)

USER root

# install python 3 and ansible
RUN apk add --no-cache python3 gcc make build-base libffi-dev python3-dev openssl-dev docker \ 
&& pip3 install --no-cache-dir --upgrade pip \
&& pip3 install --no-cache-dir cffi ansible \
&& apk del gcc make build-base build-base libffi-dev python3-dev openssl-dev

USER root
