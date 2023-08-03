# dynamodb-tool

This tool does the following:

When running the `./create-stacks` bash file:

- Creates an IAM User with no permissions
- Creates a DynamoDB Table
- Creates an IAM Policy that allows access to the DynamoDB Table just created
- Attaches that policy to the IAM User
- Prints the Access Keys
- Prints the DynamoDB Table Name


When running the `./delete-stacks` bash file:

- Dettaches the policy from the IAM User
- Deletes the IAM User
- Deletes the IAM policy
- Deletes the DynamoDB Table
