# AWS Resource Usage Monitor

This Bash script fetches and logs details about AWS resources, including **S3 Buckets, EC2 Instances, Lambda Functions, and IAM Users**. It saves the output in a timestamped log file for tracking.

## Features
- ✅ Lists **S3 buckets**
- ✅ Shows **EC2 instances** and their states
- ✅ Displays **Lambda functions**
- ✅ Lists **IAM users**
- ✅ Saves the report in a **log file** with a timestamp

## Prerequisites
- AWS CLI installed and configured  
  *(Run `aws configure` to set up credentials.)*
- Execute permission for the script  
  *(Run `chmod +x aws_usage.sh` to make it executable.)*

## Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/Sujalpatel701/aws_usage.git
   cd aws_usage
2. ./aws_usage.sh
3. ls aws_usage_*.log

![Screenshot from 2025-02-16 12-45-58](https://github.com/user-attachments/assets/bdd8fc74-311b-4d36-b717-0323ed31d396)
