#!/bin/bash

echo "Getting IAM keys..."

source ./util/set-variables.sh

# Retrieve access key and secret access key of IAM user created by stack
ACCESS_KEY=$(aws cloudformation describe-stacks --stack-name $IAM_USER_STACK --query 'Stacks[0].Outputs[?OutputKey==`AccessKey`].OutputValue' --output text)
SECRET_ACCESS_KEY=$(aws cloudformation describe-stacks --stack-name $IAM_USER_STACK --query 'Stacks[0].Outputs[?OutputKey==`SecretKey`].OutputValue' --output text)

# Output access key and secret access key
echo "Access key: $ACCESS_KEY"
echo "Secret access key: $SECRET_ACCESS_KEY"
