#!/bin/bash

# Set the AWS region for the script
export AWS_DEFAULT_REGION=eu-north-1  

# Get the script directory dynamically
SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# Get current date for logging
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="$SCRIPT_DIR/aws_usage_$DATE.log"  # Store log in the same directory as script

# Start logging
echo "AWS Resource Usage Report - $DATE" > "$LOG_FILE"
echo "====================================" >> "$LOG_FILE"

# Get S3 Buckets
echo -e "\n🗂 S3 Buckets:" >> "$LOG_FILE"
aws s3 ls >> "$LOG_FILE" 2>&1

# Get EC2 Instances
echo -e "\n💻 EC2 Instances:" >> "$LOG_FILE"
aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId, State.Name]' --output table >> "$LOG_FILE" 2>&1

# Get Lambda Functions
echo -e "\n⚡ Lambda Functions:" >> "$LOG_FILE"
aws lambda list-functions --query 'Functions[*].FunctionName' --output table >> "$LOG_FILE" 2>&1

# Get IAM Users
echo -e "\n👤 IAM Users:" >> "$LOG_FILE"
aws iam list-users --query 'Users[*].UserName' --output table >> "$LOG_FILE" 2>&1

# Completion message
echo "✅ AWS Resource usage logged at: $LOG_FILE"
