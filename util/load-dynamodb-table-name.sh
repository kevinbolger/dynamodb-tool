#!/bin/bash

echo "Getting IAM keys..."

source ./util/set-variables.sh

# Retrieve access key and secret access key of IAM user created by stack
DYNAMODB_TABLE_NAME=$(aws cloudformation describe-stacks --stack-name $DYNAMODB_TABLE_STACK --query 'Stacks[0].Outputs[?OutputKey==`DynamoDBTableName`].OutputValue' --output text)

# Output access key and secret access key
echo "DynamoDB Table Name: $DYNAMODB_TABLE_NAME"

