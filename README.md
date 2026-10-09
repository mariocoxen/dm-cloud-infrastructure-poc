DM Cloud Infrastructure PoC - Deployment Guide
Welcome to the DM Cloud Infrastructure Proof of Concept (PoC)! This repository provides an automated, lightweight web application setup using modern Infrastructure as Code (IaC) and containerization tools.

This guide is designed for everyone, even if you have no prior technical or software engineering experience. Follow the step by step instructions below to launch the entire environment on your computer in just a few minutes.

What Does This Project Do?
Instead of manually installing, configuring, and running web server software on your computer, this project uses three smart tools working together:

1: Git / GitHub: Downloads the exact "recipe" (source code) for this project onto your computer.

2: Docker: Runs the web server inside an isolated, lightweight digital container. This ensures the application runs consistently on any computer without messing up your personal files or settings.

3: Terraform: Acts as the automated manager. With one simple command, Terraform reads the recipe, talks to Docker, downloads the necessary components, and launches the web application automatically.

System Requirements
Before starting, ensure your computer has the following tools installed and running:
Windows 10/11 with WSL2 (Windows Subsystem for Linux)
Docker Desktop (Make sure Docker Desktop is opened and running in your taskbar)
Git Bash (or any standard Linux terminal)
Terraform (installed on your system PATH)


Step-by-Step Deployment Guide
Follow these steps in order.

Step 1: Open Your Terminal
1: Press the Windows Key on your keyboard.
2: Type Git Bash in the search bar.
3: Click on Git Bash to open a command window

Step 2: Download (Clone) the Repository
Copy and paste the following command into your Git Bash window, then press Enter:
- # Downloads the project files from GitHub to your local machine
git clone https://github.com/mariocoxen/dm-cloud-infrastructure-poc.git

Step 3: Navigate into the Project Folder
Move into the newly downloaded project directory:
- # Changes your terminal's active location to the project directory
cd dm-cloud-infrastructure-poc

Step 4: Initialize Terraform
Initialize Terraform to download the necessary Docker integration tools (providers) required to build the setup:
- # Prepares Terraform and downloads required automation plugins
terraform init
(Expected Output: You should see a green success message stating "Terraform has been successfully initialized!")

Step 5: Launch the Infrastructure
Run the following command to deploy the containerized web application:
- # Builds and starts the web server container automatically
terraform apply -auto-approve

What happens behind the scenes:
Terraform contacts Docker.
Docker pulls a lightweight Linux web server (Nginx).
Terraform maps your computer's port 8080 to the web server.
Terraform attaches the custom webpage files (/src) to the live container.


Step 6: View the Web Application
1: Open your preferred web browser (Chrome, Edge, Brave, Firefox, etc.).
2: In the address bar at the top, type:
http://localhost:8080
3:Press Enter.

Stopping or Destroying the Infrastructure:
When you are finished demonstrating or testing the application, you can safely remove all created container resources with a single command without leaving any background files behind.
1: Open your terminal in the project folder using:
cd dm-cloud-infrastructure-poc

2: Run the destroy command:
# Safely stops and deletes the running Docker container
terraform destroy -auto-approve

**Summary of Useful Commands**
Action == Terminal Command
Navigate to project folder == cd dm-cloud-infrastructure-poc
Start / Deploy server == terraform apply -auto-approve
Stop / Clean up server == terraform destroy -auto-approve
Access application in browser == http://localhost:8080
