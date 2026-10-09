# DM Cloud Infrastructure PoC

A lightweight infrastructure-as-code proof of concept for deploying a simple web application locally using Docker and Terraform.

This project demonstrates how to provision and run a static web app in a container using:

- Git and GitHub for source control
- Docker for containerization
- Terraform for infrastructure automation

It is designed as a simple local demo environment and is intended to be easy to run for beginners.

## What This Project Does

Instead of manually installing and configuring a web server on your machine, this repository automates the setup for you. Terraform reads the project configuration, provisions the required Docker resources, and launches a lightweight Nginx container that serves the website files from the project.

In short:

- Git clones the project
- Docker runs the container
- Terraform automates the deployment

---

## Prerequisites

Before starting, make sure the following are installed and running on your machine:

- Windows 10 or Windows 11 with WSL2 enabled
- Docker Desktop installed and running
- Git Bash (or any compatible Linux-style terminal)
- Terraform installed and available in your PATH

> Note: This project is intended for local use and demonstration purposes.

---

## Quick Start

Clone the repository:

```bash
git clone https://github.com/mariocoxen/dm-cloud-infrastructure-poc.git
cd dm-cloud-infrastructure-poc
```

Initialize Terraform:

```bash
terraform init
```

Deploy the infrastructure:

```bash
terraform apply -auto-approve
```

Open the app in your browser:

```text
http://localhost:8080
```

---

## Step-by-Step Deployment Guide

### 1. Open a Terminal

Open Git Bash or your preferred terminal application.

### 2. Clone the Repository

Run:

```bash
git clone https://github.com/mariocoxen/dm-cloud-infrastructure-poc.git
```

This downloads the project files onto your local machine.

### 3. Navigate to the Project Folder

```bash
cd dm-cloud-infrastructure-poc
```

### 4. Initialize Terraform

Run:

```bash
terraform init
```

This downloads the required Terraform providers and prepares the project for deployment.

### 5. Deploy the Infrastructure

Run:

```bash
terraform apply -auto-approve
```

Terraform will:

- connect to Docker
- pull the Nginx container image
- create the necessary resources
- map port 8080 from your machine to the container
- serve the contents of the project’s web files

### 6. Open the Website

In your browser, go to:

```text
http://localhost:8080
```

You should see the deployed web page.

---

## What Happens Behind the Scenes

This project uses:

- Terraform to define and apply infrastructure changes
- Docker to run the containerized application
- Nginx as the web server
- Local port mapping so the app is accessible at port 8080

The website files are served from the project’s source directory and mounted into the running container.

---

## Stop and Remove the Infrastructure

When you are done testing or demonstrating the project, you can destroy the environment:

```bash
terraform destroy -auto-approve
```

This removes the provisioned resources and cleans up the local infrastructure created by Terraform.

---

## Useful Commands

| Action | Command |
| --- | --- |
| Go to the project folder | `cd dm-cloud-infrastructure-poc` |
| Initialize Terraform | `terraform init` |
| Deploy app | `terraform apply -auto-approve` |
| Remove app and resources | `terraform destroy -auto-approve` |
| Open app in browser | `http://localhost:8080` |

---

## Troubleshooting

### Docker Desktop is not running

Make sure Docker Desktop is installed and started before running Terraform commands.

### Terraform is not recognized

Ensure Terraform is installed and added to your system PATH.

### Port 8080 is already in use

Another process may already be using port 8080. Stop that service or adjust the port mapping in the configuration.

### App does not load in browser

Check that:

- Docker Desktop is running
- Terraform apply completed successfully
- The container is still running
- No port conflicts are preventing access

---

## Summary

This repository provides a simple, beginner-friendly example of infrastructure automation using Terraform and Docker. It is ideal for local testing, demonstrations, and learning the basics of containerized application deployment.

---

## License

This project is provided for educational and demonstration purposes.
