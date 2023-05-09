#!/bin/bash

####################
# Author: Kobina
# Date: 9th-May
#
# Version: v1
#
# This Script will Report the AWS Resource usage in the AWS Account
####################
set -x

# AWS s3
# AWS EC2
# AWS Lambda
# AWS IAM Users
# 

# List Available s3 Bucket
echo "Print list of S3 Bucket"
aws s3 ls > s3resourceTracker

# List Available EC2
echo "Print list of E2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > ec2resourceTracker

# List Lambda Functions
echo "Print list of Lambda Functions"
aws lambda list-functions > lambdaresourceTracker

# List IAM User
echo "Print list of IAM Users"
aws iam list-users > iamUserresourceTracker