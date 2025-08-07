# Terraform AWS Infrastructure

A comprehensive collection of Terraform modules for AWS infrastructure deployment, covering various use cases from basic EC2 instances to complex EKS clusters and networking solutions.

## 🏗️ Project Overview

This repository contains multiple Terraform modules designed to deploy and manage AWS infrastructure components. Each module is self-contained and follows Terraform best practices with proper variable definitions, outputs, and documentation.

## 📁 Project Structure

```
terraform-aws/
├── bastion-host/           # Bastion host setup with VPC and EKS
├── ec2-latest-ami/         # Simple EC2 instance with latest AMI
├── eks-cluster/            # Complete EKS cluster with node groups
├── loops-arguments-splat/  # Terraform loops and meta-arguments examples
└── three-tier-vpc/         # Three-tier VPC architecture
```

## 🚀 Available Modules

### 1. Bastion Host (`bastion-host/`)
Complete infrastructure setup including:
- VPC with public and private subnets
- Bastion host EC2 instance with Elastic IP
- EKS cluster with public and private node groups
- Security groups and IAM roles
- **Terraform Version**: >= 1.6.0
- **AWS Provider**: >= 5.31

### 2. EC2 Latest AMI (`ec2-latest-ami/`)
Simple EC2 instance deployment:
- Latest Amazon Linux 2 AMI
- Security group configuration
- Basic EC2 instance setup
- **Terraform Version**: ~> 0.14
- **AWS Provider**: ~> 3.0

### 3. EKS Cluster (`eks-cluster/`)
Production-ready EKS cluster with:
- Complete VPC infrastructure
- Bastion host for cluster access
- EKS cluster with IAM roles
- Public and private node groups
- Security groups and networking
- **Terraform Version**: >= 1.6.0
- **AWS Provider**: >= 5.31

### 4. Loops and Meta-Arguments (`loops-arguments-splat/`)
Educational examples demonstrating:
- **Count Meta-Argument**: Lists and maps usage
- **For Each Meta-Argument**: Using toset() and tomap() functions
- Multiple EC2 instance creation patterns

### 5. Three-Tier VPC (`three-tier-vpc/`)
Enterprise-grade VPC architecture:
- Public subnets (10.0.101.0/24, 10.0.102.0/24)
- Private subnets (10.0.1.0/24, 10.0.2.0/24)
- Database subnets (10.0.151.0/24, 10.0.152.0/24)
- NAT gateways and route tables
- Security group configurations

## 🛠️ Prerequisites

- **Terraform**: Version 1.6.0 or higher (for newer modules)
- **AWS CLI**: Configured with appropriate credentials
- **AWS Profile**: Set up as "personal72" (modify in provider blocks as needed)

## 📋 Quick Start

### 1. Clone the Repository
```bash
git clone <repository-url>
cd terraform-aws
```

### 2. Configure AWS Credentials
```bash
aws configure --profile personal72
```

### 3. Choose a Module
Navigate to your desired module:
```bash
cd <module-name>
# Example: cd bastion-host
```

### 4. Initialize Terraform
```bash
terraform init
```

### 5. Review the Plan
```bash
terraform plan
```

### 6. Apply the Configuration
```bash
terraform apply
```

## 🔧 Module-Specific Usage

### Bastion Host Module
```bash
cd bastion-host
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
```

### EKS Cluster Module
```bash
cd eks-cluster
terraform init
terraform plan -var-file="eks.auto.tfvars"
terraform apply -var-file="eks.auto.tfvars"
```

### Three-Tier VPC Module
```bash
cd three-tier-vpc
terraform init
terraform plan -var-file="vpc.auto.tfvars"
terraform apply -var-file="vpc.auto.tfvars"
```

## 📝 Configuration

Each module includes:
- **Variables**: Defined in `c*-variables.tf` files
- **Auto Variables**: Pre-configured values in `*.auto.tfvars` files
- **Outputs**: Resource information in `c*-outputs.tf` files
- **Local Values**: Computed values in `c*-local-values.tf` files

## 🧹 Cleanup

To destroy infrastructure:
```bash
terraform destroy
```

⚠️ **Warning**: This will permanently delete all resources created by the module.

## 📚 Learning Resources

The `loops-arguments-splat/` directory contains educational examples for:
- Using `count` meta-argument with lists and maps
- Implementing `for_each` with `toset()` and `tomap()` functions
- Best practices for resource iteration in Terraform

## 🔒 Security Notes

- All modules include appropriate security group configurations
- Bastion hosts are properly secured with SSH access
- EKS clusters follow AWS security best practices
- Private subnets are used for sensitive resources

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## ⚠️ Disclaimer

This infrastructure code is for educational and demonstration purposes. Always review and test in a non-production environment before deploying to production.

---

**Note**: Remember to update the AWS profile name in provider blocks if you're using a different profile than "personal72".