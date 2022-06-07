#!/bin/bash

# shellcheck disable=SC2164
cd ../nginx-client-server
yarn build

#docker build -t nginx-client-server .

docker run -d -p 8080:80 nginx-client-server