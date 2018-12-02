FROM jenkins/jenkins

USER root

# install  python 3 and ansible

RUN apt-get update && apt-get install -y python3 python3-pip && rm -rf /var/lib/apt/lists/*
RUN pip3 install ansible


USER jenkins