#!/bin/bash
$(aws ecr get-login --no-include-email --registry-ids 396654005341 --region us-east-1)

if [ `docker images | grep devops-project | wc -l`  = 1 ]
then
        docker rmi devops-project
        docker pull 396654005341.dkr.ecr.us-east-1.amazonaws.com/devops-project:latest
else
        docker pull 396654005341.dkr.ecr.us-east-1.amazonaws.com/devops-project:latest
fi
