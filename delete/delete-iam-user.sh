#!/bin/bash

echo "Deleting iam-user stack..."

source ./util/set-variables.sh

aws cloudformation delete-stack --stack-name $IAM_USER_STACK --profile $PROFILE_NAME
aws cloudformation wait stack-delete-complete --stack-name $IAM_USER_STACK --profile $PROFILE_NAME
