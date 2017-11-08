#!/bin/bash
cp ~/.ssh/id_rsa ssh_key/
docker build . -t ducatuscore-wallet-service-p90x
