# Project Title

## Overview
Brief description of your project.

## Architecture
 ![ Alt Architecture](AWS.png)

### Public Subnets
- These subnets host resources that need to be accessible from the internet.
- Subnet CIDRs: `10.0.101.0/24`, `10.0.102.0/24`

### Private Subnets
- These subnets host application servers and other resources without direct internet access.
- Subnet CIDRs: `10.0.1.0/24`, `10.0.2.0/24`

### Database Subnets
- These subnets host database servers and storage solutions.
- Subnet CIDRs: `10.0.151.0/24`, `10.0.152.0/24`

## Usage
1. Initialize Terraform:
 ```sh
   terraform init
 ```  

2. Apply the Configuration:
 ```sh
   terraform apply
 ```
