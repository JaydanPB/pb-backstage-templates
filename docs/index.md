# New AWS EC2 Instance Template

This Scaffolder template automates the creation of a new AWS EC2 instance.

## Purpose

The goal is to provide a self-service way for teams to provision a basic EC2 server. The process creates a new GitHub repository containing the Terraform code for the instance and registers the new infrastructure as a `Resource` component in the Software Catalog.

## Parameters

The template requires the following input:

- **Component Name**: A unique name for the component in the catalog.
- **Owner**: The team that will own the new infrastructure.
- **AWS Account ID**: The 12-digit AWS account where the resource will be deployed.
- **AWS Region**: The region for the deployment (e.g., `eu-west-2`).
- **Instance Name**: The `Name` tag for the EC2 instance.
- **Repository Location**: The location for the new GitHub repository that will store the Terraform code.

## Automation Steps

1.  **Fetch Skeleton**: Copies a standard set of Terraform (`.tf`) and `catalog-info.yaml` files.
2.  **Publish to GitHub**: Creates a new GitHub repository and pushes the templated files to it.
3.  **Run Terraform**: (Placeholder) This step triggers the CI/CD pipeline to run `terraform apply`.
4.  **Register Component**: Registers the new component in the Software Catalog.
