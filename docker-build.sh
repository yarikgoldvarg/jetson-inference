#!/bin/bash
REPO="yarikgold"
PROJECT="jetson-inference"
COMMIT=$(git rev-parse --short HEAD)
TAG="latest"


docker build  . -t $PROJECT:$COMMIT
docker tag $PROJECT:$COMMIT $REPO/$PROJECT:$TAG

#docker login
#docker push $REPO/$PROJECT:$TAG





