#!/bin/bash

echo "Creating dynamodb table stack..."

source ./util/set-variables.sh

aws cloudformation create-stack --stack-name $DYNAMODB_TABLE_STACK --template-body file://./create/create-dynamodb-table.yaml --parameters ParameterKey=TableName,ParameterValue=$DYNAMODB_TABLE_NAME --profile $PROFILE_NAME > /dev/null 2>&1

sleep 20
aws cloudformation wait stack-create-complete --stack-name $DYNAMODB_TABLE_STACK --profile $PROFILE_NAME
