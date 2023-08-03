#!/bin/bash

echo "Creating iam-user stack..."

source ./util/set-variables.sh

aws cloudformation create-stack --stack-name $IAM_USER_STACK --template-body file://./create/create-iam-user.yaml --parameters ParameterKey=IAMUserName,ParameterValue=$IAM_USER_NAME --profile $PROFILE_NAME --capabilities CAPABILITY_NAMED_IAM > /dev/null 2>&1

aws cloudformation wait stack-create-complete --stack-name $IAM_USER_STACK --profile $PROFILE_NAME --no-paginate
