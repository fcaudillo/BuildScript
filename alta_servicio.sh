#!/bin/bash


for file in `find . -name docker-compose.yml`
do
  echo $file
  awk '/^#inicio$/{flag=1}/^#fin$/{print;flag=0}flag' $file > ./docker-compose-clean.yml
  cat ./docker-compose-clean.yml >> /main/docker-compose.yml
  rm -rf $file
  rm ./docker-compose-clean.yml

done