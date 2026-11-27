# Nov2026_Ravi_Pathnex

In this repo we will learn the topics below. More topics will be added later as I learn new things.

## Index

- [Nov2026\_Ravi\_Pathnex](#nov2026_ravi_pathnex)
  - [Index](#index)
  - [Definitions](#definitions)
    - [1. Linux important commands](#1-linux-important-commands)
    - [2. Git](#2-git)
    - [3. AWS](#3-aws)
    - [4. Docker and Docker Compose](#4-docker-and-docker-compose)
    - [5. Kubernetes](#5-kubernetes)
    - [6. EKS](#6-eks)
    - [7. Helm](#7-helm)
    - [8. ArgoCD](#8-argocd)
    - [9. Terraform](#9-terraform)
    - [10. Ansible](#10-ansible)
    - [11. Monitoring tools (New Relic and Grafana)](#11-monitoring-tools-new-relic-and-grafana)
    - [12. GitLab / GitHub CI/CD](#12-gitlab--github-cicd)
    - [13. ELK (Elasticsearch, Logstash, Kibana)](#13-elk-elasticsearch-logstash-kibana)
    - [14. Kafka, RabbitMQ, AWS SQS](#14-kafka-rabbitmq-aws-sqs)

---

## Definitions

### 1. Linux important commands
Linux is a free operating system, like Windows or macOS, and most servers run on it. Linux commands are short text instructions that you type in the terminal. You use them to move between folders, read and edit files, check running programs, and manage the server. Examples: `ls`, `cd`, `cat`, `grep`, `chmod`, `ps`, `top`.

[Back to index](#index)

### 2. Git
Git is a tool that saves the history of your code. It lets you go back to an older version, work on a separate branch, and join your work with other people's work. GitHub and GitLab are websites that store Git projects online.

[Back to index](#index)

### 3. AWS
AWS (Amazon Web Services) is Amazon's cloud. Instead of buying your own computers, you rent servers, storage, databases, and networks from Amazon and pay only for what you use. Examples: EC2 (servers), S3 (file storage), RDS (databases), IAM (users and permissions).

[Back to index](#index)

### 4. Docker and Docker Compose
Docker packs an application and everything it needs into one box called a container, so it runs the same way on every computer. Docker Compose is a tool to start many containers together (for example, an app, a database, and a cache) using one file called `docker-compose.yml`.

[Back to index](#index)

### 5. Kubernetes
Kubernetes (also called K8s) is a system that runs and manages many containers across many servers. It starts containers again if they crash, adds more when traffic grows, and updates the app without stopping it.

[Back to index](#index)

### 6. EKS
EKS (Elastic Kubernetes Service) is Kubernetes run by AWS. AWS takes care of the main control part of the cluster, so you only focus on your applications.

[Back to index](#index)

### 7. Helm
Helm is the package manager for Kubernetes, like `apt` for Linux. It bundles all the Kubernetes files of an app into one package called a chart, so you can install, update, and remove the app with one command.

[Back to index](#index)

### 8. ArgoCD
ArgoCD is a tool that deploys apps to Kubernetes using GitOps. This means Git is the single source of truth. ArgoCD watches your Git repo and keeps the cluster the same as what is written in Git.

[Back to index](#index)

### 9. Terraform
Terraform is an Infrastructure as Code tool. You write what servers, networks, and databases you want in code files, and Terraform creates them for you in AWS or other clouds. You can create, change, or delete them again and again in the same way.

[Back to index](#index)

### 10. Ansible
Ansible is a tool to set up and manage many servers automatically. You write the steps in a simple YAML file called a playbook (install software, copy files, start services), and Ansible runs them on all servers over SSH. It needs no extra program on the servers.

[Back to index](#index)

### 11. Monitoring tools (New Relic and Grafana)
Monitoring tools show how healthy your servers and apps are, and send alerts when something is wrong.
- **New Relic**: a paid online service that tracks app speed, errors, and server health.
- **Grafana**: a free tool that shows data from many sources as charts and dashboards.

[Back to index](#index)

### 12. GitLab / GitHub CI/CD
CI/CD means Continuous Integration and Continuous Delivery. Every time you push code, it is tested, built, and deployed automatically. GitLab CI uses a `.gitlab-ci.yml` file, and GitHub Actions uses files inside `.github/workflows/`.

[Back to index](#index)

### 13. ELK (Elasticsearch, Logstash, Kibana)
ELK is a group of three tools for working with logs:
- **Elasticsearch**: stores logs and lets you search them fast.
- **Logstash**: collects logs and cleans them before saving.
- **Kibana**: shows the logs as charts and dashboards in a browser.

[Back to index](#index)

### 14. Kafka, RabbitMQ, AWS SQS
These are message queue tools. One program puts a message in the queue, and another program reads it later. This helps apps talk to each other without waiting.
- **Kafka**: handles a very large flow of messages and keeps them for a long time.
- **RabbitMQ**: a classic message broker with flexible routing of messages.
- **AWS SQS**: a simple queue service managed by AWS.

[Back to index](#index)
