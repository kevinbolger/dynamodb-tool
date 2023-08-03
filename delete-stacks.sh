#!/bin/bash

echo "Deleting stacks..."
./util/dettach-policy-from-iam-user.sh
./delete/delete-iam-user.sh
./delete/delete-iam-policy.sh
./delete/delete-dynamodb-table.sh
