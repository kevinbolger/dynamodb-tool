#!/bin/bash

source ./util/set-variables.sh

# Get the ARN of the policy
IAM_POLICY_ARN=$(aws iam list-policies --query 'Policies[?PolicyName==`'$IAM_POLICY_NAME'`].Arn' --output text)

# Attach the policy to the user
aws iam attach-user-policy --user-name $IAM_USER_NAME --policy-arn $IAM_POLICY_ARN --profile $PROFILE_NAME
