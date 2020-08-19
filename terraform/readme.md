# Deployment via Terraform

This section contains all the relevent IaC to deploy the applicaiton into AWS.

## Gettings started

- Install terraform v0.12 https://learn.hashicorp.com/tutorials/terraform/install-cli
- Install AWS CLI https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html
- Configure AWS profile: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html

## Configuration

- `cd deployment`
- Update variables.tf with relevent values
- If required, update S3 bucket or profile in main.tf
- Initialise state file: `terraform init`
- Apply `terraform apply`

## Design

Terraform will create the following:

- VPC for the application, subnets, routing tables, etc.
- Postgres Aurora RDS
- Load balancer (listenting port 80, open to the world)
- Create a ECS cluster
- Create a ECS service
- Create a ECS tasks passing in database creditials

The application will be deployed into AWS Fargate to run the container. The containers will have access to the Aurora DB. The load balancer will provide access to the container ports 3000 via port 80 publicly.

## Database

The database will need to be initally created by running a task with the `updatedb` command.

## Accessing the app

The application should be accessable via the Load balancer DNS.
