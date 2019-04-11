#!/bin/bash
docker stop dinv1
docker rm dinv1
docker ps -f name=dinv1
