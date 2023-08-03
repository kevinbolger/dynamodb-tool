#!/bin/bash

source ./create/create-iam-user.sh
source ./create/create-dynamodb-table.sh
source ./create/create-iam-policy.sh
source ./util/attach-policy-to-iam-user.sh
source ./util/load-iam-user-keys.sh
source ./util/load-dynamodb-table-name.sh
