#!/bin/bash
AWS_ACCOUNT_ID=YOUR AWS_ACCOUNT_ID
AWS_DEFAULT_REGION=eu-west-1
REPO_NAME=elastic/logstash # must be created before pushing the image to repository
LOGSTASH_VERSION=6.8.18
eval $(aws ecr get-login --region $AWS_DEFAULT_REGION --no-include-email | sed 's|https://||')
docker build --build-arg LOGSTASH_VERSION=$LOGSTASH_VERSION -t $REPO_NAME:$LOGSTASH_VERSION .
docker tag $REPO_NAME:$LOGSTASH_VERSION $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$REPO_NAME:$LOGSTASH_VERSION
docker push $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$REPO_NAME:$LOGSTASH_VERSION