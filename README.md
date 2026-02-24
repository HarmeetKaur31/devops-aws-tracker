# 🚀 AWS Resource Tracker

A Bash script to track AWS resources like S3 buckets, EC2 instances, and Lambda functions.  
This script is useful for DevOps engineers or cloud professionals who want a **quick overview of their AWS environment** without logging into the console.

## 📌 Features
- Lists all S3 buckets in your AWS account.
- Lists all EC2 instances with ID, type, state, and launch time.
- Lists all Lambda functions with name, runtime, and last modified date.
- Uses IAM roles or environment variables for credentials — **no hardcoded AWS keys**.

## Usage
Run the script with paging to avoid freezing your terminal:

```bash
bash ./aws_resource_tracker.sh | less

## ⚙️ Requirements
- AWS CLI installed
- Proper IAM role or AWS credentials configured

🧠 Use Case

Helpful for:
-DevOps engineers
-Cloud engineers
-AWS environment auditing
-Learning AWS CLI automation

👩‍💻 Author

Harmeet Kaur
Aspiring DevOps & Cloud Engineer
