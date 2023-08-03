#!/bin/bash

echo "Dettaching policy from iam-user..."

source ./util/set-variables.sh

# Get the ARN of the policy
IAM_POLICY_ARN=$(aws iam list-policies --query 'Policies[?PolicyName==`'$IAM_POLICY_NAME'`].Arn' --output text)


aws iam detach-user-policy --user-name $IAM_USER_NAME --policy-arn $IAM_POLICY_ARN
