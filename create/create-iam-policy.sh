#!/bin/bash

echo "Creating iam-policy stack..."

source ./util/set-variables.sh

aws cloudformation create-stack --stack-name $IAM_POLICY_STACK --template-body file://./create/create-iam-policy.yaml --parameters ParameterKey=IAMPolicyName,ParameterValue=$IAM_POLICY_NAME --profile $PROFILE_NAME --capabilities CAPABILITY_NAMED_IAM > /dev/null 2>&1

aws cloudformation wait stack-update-complete --stack-name $IAM_POLICY_STACK --profile $PROFILE_NAME --no-paginate
