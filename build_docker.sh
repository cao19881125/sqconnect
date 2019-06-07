#!/bin/bash

cd openconnect
docker build -t openconnect:latest .

cd ../squid
docker build -t squid:latest .
