#!/bin/bash
apt-get update -y
apt-get install -y software-properties-common
add-apt-repository -y ppa:deadsnakes/ppa
apt-get update -y
apt-get install -y python3.11 python3.11-dev python3.11-venv python3-pip
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1
