set -ex
#set registry
USERNAME=396654005341.dkr.ecr.us-east-1.amazonaws.com
# image name
IMAGE=devops-project
docker build -t $USERNAME/$IMAGE:latest .
docker push $USERNAME/$IMAGE:latest

