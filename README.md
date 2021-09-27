<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="logo.png" alt="Project logo"></a>
</p>

<h3 align="center">ELK Stack on AWS ECS</h3>

---

<p align="center">Log Analytics and Visualization Stack (ELK) on AWS ECS <br> </p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Built Using](#built_using)
- [Authors](#authors)

## 🧐 About 

ELK Stack is the combination of three tools. We can search, analyze as well as visualize the data. This is possible after the initialization of the ELK Stack setup. Elasticsearch will store the data and work as an Analytics engine.

This template enables the orgnization/ System Admin to to create an Elastic Stack to deploy on AWS ECS.

## Elastic Logstash Kibana Architecture

## 🏁 Getting Started 

These instructions will help the deloy the template on your AWS Environment for development and testing purposes. See [Usage](#Usage) for notes on how to deploy the project on a live system.

### Prerequisites

1. AWS Cloud 9 Environment
2. Role attached to Cloud9 environment.
3. AWS VPC
4. Private Subnet Ids
5. Registered domain name for ELK Stack

## 🎈 Usage 

1. clone [This](https://github.com/ankitosh/aws-ecs-elk) repo.
   ```
   git clone https://github.com/ankitosh/aws-ecs-elk
   ```
2. We need to create a repository for ElasticSearch and upload Elasticsearch configured image to this repo.
   a. Open "elk-stack-aws-ecr-bake-and-push.sh" and update your details
   ```
   AWS_ACCOUNT_ID=YOUR AWS ACCOUNT ID # replace with your account id
   REPO_NAME=$1
   ES_VERSION=7.13.4
   AWS_DEFAULT_REGION=eu-west-1        # replace with your region
   ```
3. Once updated save the files and run below command.
   we are using shell script to create repository for elasticsearch and logstash
   ```
   ./elk-stack-aws-ecr-push.sh
   ```

4. 
## ⛏️ Built Using 

- [CloudFormation](https://aws.amazon.com/cloudformation/) - Template

## ✍️ Authors

- [@ankitosh](https://github.com/ankitosh) - Idea & Initial work
