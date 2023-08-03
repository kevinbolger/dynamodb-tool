#!/bin/bash

echo "Deleting dynamodb-table stack..."

source ./util/set-variables.sh

aws cloudformation delete-stack --stack-name $DYNAMODB_TABLE_STACK --profile $PROFILE_NAME
aws cloudformation wait stack-delete-complete --stack-name $DYNAMODB_TABLE_STACK --profile $PROFILE_NAME
