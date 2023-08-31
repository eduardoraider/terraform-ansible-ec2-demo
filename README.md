# Creating EC2 Instance on AWS using Terraform and Ansible - (IaC)

This repository contains a Django Python application that demonstrates how to provision an EC2 instance on Amazon Web Services (AWS) using Infrastructure as Code (IaC) principles. The process involves utilizing Terraform for infrastructure provisioning and Ansible for configuration management. By following this guide, you will set up an EC2 instance programmatically, showcasing the power of IaC in maintaining consistent and scalable infrastructure.

## Prerequisites

Before you begin, ensure you have the following prerequisites in place:

1. **AWS Account**: Sign up for an AWS account if you don't have one.
2. **Terraform**: Install Terraform by following the official [installation guide](https://learn.hashicorp.com/tutorials/terraform/install-cli).
3. **Ansible**: Install Ansible by following the official [installation guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).
4. **Python**: Install Python and Django framework. Use `pip install django`.

## Getting Started

Follow these steps to provision an EC2 instance on AWS using Terraform and Ansible:

### 1. Clone the Repository

```bash
git clone https://github.com/eduardoraider/terraform-ansible-ec2-demo.git
cd terraform-ansible-ec2-demo
```

### 2. Configure AWS Credentials

Ensure your AWS credentials are properly configured either through environment variables or the `~/.aws/credentials` file.

```bash
chmod 400 key.pem
```

### 3. Customize Variables
 
Modify the `main.tf` file to suit your configuration preferences, such as the AWS region, instance type, etc.

### 4. Initialize and Apply Terraform

```bash
terraform init
terraform apply
```

Terraform will provision the specified infrastructure components on AWS. Check if the instance is running by accessing it in your browser using http://public-ip-address:8080

>_note_: Make sure to replace `public-ip-address` with the actual public IP address of your EC2 instance.

### 5. Configure Ansible

Update the `hosts.yml` file with the public IP address of the EC2 instance created by Terraform.

### 6. Run Ansible Playbook

```bash
ansible-playbook playbook.yml -u ubuntu --private-key key.pem -i hosts.yml
```

The Ansible playbook will connect to the EC2 instance and apply configuration settings.

### 7. Access Your EC2 Instance

You can now SSH into your EC2 instance using the provided public IP address.

```bash
ssh -i /path/to/your/private/key.pem ec2-user@public-ip-address
```

### 8. Run Django Application

Navigate to the `backend` directory and start the Django development server:

```bash
cd backend
. venv/bin/activate
python manage.py runserver 0.0.0.0:8000
```

Access the Django application in your browser at `http://public-ip-address:8000`.

>_note_: Make sure to replace `public-ip-address` with the actual public IP address of your EC2 instance.

### 9. Clean Up

To prevent unnecessary charges, remove the resources created:

```bash
terraform destroy
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE.txt) file for details.

---

#### by Eduardo O Raider
🛠 🥋 **Software Engineer**