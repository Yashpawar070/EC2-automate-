AWS EC2 Automation Script

Overview

This project is a Bash Shell Script that automates common AWS EC2 operations using the AWS CLI.

Features

* Create EC2 Instance
* Stop EC2 Instance
* Start EC2 Instance
* Reboot EC2 Instance
* Terminate EC2 Instance
* Show EC2 Instance Status

Technologies Used

* Bash Shell Scripting
* AWS CLI
* Amazon EC2
* Linux

Prerequisites

Before running the script, ensure you have:

* AWS CLI installed
* AWS CLI configured (aws configure)
* IAM user with EC2 permissions
* An existing Key Pair
* Security Group
* Subnet ID
* Valid AMI ID

How to Run

Give execute permission:

chmod +x ec2-menu.sh

Run the script:

./ec2-menu.sh

Menu

1. Create EC2
2. Stop EC2
3. Start EC2
4. Reboot EC2
5. Terminate EC2
6. Show Status
7. Exit

Author

Yash Pawar
Aspiring AWS Cloud & DevOps Engineer
