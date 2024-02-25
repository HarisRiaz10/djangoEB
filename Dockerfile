FROM ubuntu:20.04

# Installing Python
RUN apt update && apt install -y software-properties-common &&\
    add-apt-repository ppa:deadsnakes/ppa &&\
    apt install -y python3.8 &&\
    apt-get install -y python3-distutils python3-apt &&\
    apt install -y curl &&\
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py

# Installations
RUN apt-get update &&\
    pip install Django &&\
    pip install Pillow &&\
    pip install django-filter &&\
    pip install crispy-bootstrap5 &&\
    pip install django-storages &&\
    pip install boto3 awscli awsebcli


# Installing Git
RUN apt-get update &&\
    apt-get install git-all -y

