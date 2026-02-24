#!/bin/bash

##############################################################
# AWS Resource Tracker Script
# Lists S3 buckets, EC2 instances, and Lambda functions
# Uses IAM role or environment variables for credentials
# Run with: bash ./aws_resource_tracker.sh | less
##############################################################

echo "==============================="
echo "AWS RESOURCE TRACKER STARTING..."
echo "==============================="

# S3 Buckets
echo
echo ">> S3 Buckets:"
aws s3 ls

# EC2 Instances
echo
echo ">> EC2 Instances:"
aws ec2 describe-instances \
    --query 'Reservations[].Instances[].{ID:InstanceId,Type:InstanceType,State:State.Name,LaunchTime:LaunchTime}' \
    --output table

# Lambda Functions
echo
echo ">> Lambda Functions:"
aws lambda list-functions \
    --query 'Functions[].{Name:FunctionName,Runtime:Runtime,LastModified:LastModified}' \
    --output table

echo
echo "==============================="
echo "AWS RESOURCE TRACKER COMPLETED."
echo "==============================="
