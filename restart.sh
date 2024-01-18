#!/usr/bin/env bash


rm -rf ./sftp1/* && \
rm -rf ./sftp2/*;
docker-compose down --remove-orphans;
docker-compose up