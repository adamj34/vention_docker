#!/usr/bin/env bash

# Build Docker images with different Ansible versions
docker build --build-arg ANSIBLE_VERSION=2.14.13 -t ansible:2.14.13 .
docker build --build-arg ANSIBLE_VERSION=2.16.2 -t ansible:2.16.2 .

# Verify the containers are working (should print the Ansible version)
echo "Testing Ansible 2.14.13:"
docker run ansible:2.14.13

echo "Testing Ansible 2.16.2:"
docker run ansible:2.16.2