#!/usr/bin/env bash

set -e

PATH=${PWD}/env/bin:${PATH}

set -x

yamllint -sc yamllint.yml $PWD

ansible-lint playbook.yml -p -c .ansible-lint

ansible-playbook playbook.yml --syntax-check
