#!/usr/bin/env bash
# Iceman 2022
#
# This script is to be run from proxmark root folder inside the docker env
# docker/fedora-43/run_tests.sh;

sudo yum -y update
python3 -m venv /tmp/venv
source /tmp/venv/bin/activate
python3 -m pip install --use-pep517 pyaes
python3 -m pip install ansicolors sslcrypto
tools/release_tests.sh
deactivate
