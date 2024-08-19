
# Application Deployment with Docker and Jenkins

    This project demonstrates how to build and deploy a web application using Docker and Jenkins. The application is containerized with Docker and CI/CD pipelines are managed with Jenkins

## Table of Contents

    *Prerequisites
    *Getting Started
    *Docker Setup
    *Jenkins Setup
    *Folder Structure
    *Monitoring
    *Usage
    *Troubleshooting
## Prerequisites
    Before you begin, ensure you have the following installed:

    *Docker: Install Docker
    *Jenkins: Install Jenkins
    *Git: Install Git
## Getting Started

    1. Clone the Repository

        Clone the repository using git clone https://github.com/yourusername/your-repository.git

    2. Build the Docker Image

<<<<<<< HEAD
    To automate the process of building a Docker image and pushing it to Docker Hub based on code pushed to a specific branch, created two shell scripts: build.sh and deploy.sh.
   #### build.sh 
 ![build sh](https://github.com/user-attachments/assets/2a13dec3-b958-4d32-acb1-9d91dfa3744c)

### deploy.sh
        
 ![deploy sh](https://github.com/user-attachments/assets/fe721458-1b03-443a-a420-e8dd574cef36)


     

## Docker Setup
### The Dockerfile in this project is configured to:

    *Use the official nginx image as the base image.
    *Copy all files from the current directory to /usr/share/nginx/html/ in the container.
    *Expose port 80.
    *Run nginx in the foreground
## Jenkins Setup
### The Jenkins pipeline is set up to:

    1.Checkout Code: Pull the latest code from the Git repository.
    2.Build Docker Image: Build the Docker image using the Dockerfile.
    3.Push Docker Image: Push the Docker image to Docker Hub or another registry.
    4.Deploy: Deploy the Docker container to the desired environment.
## Monitoring
    Monitoring of an application is done through cloud watch and uses metrices of an instance to send an alarm through Simple Notification Service to the subscribers.

 ![sns](https://github.com/user-attachments/assets/50f59794-fe1d-401d-9af4-dcf80d494682)
## Folder Structure
    /
    ├── Dockerfile
    ├── Jenkinsfile
    ├── _redirects
    ├── asset-manifest.json
    ├── build.sh
    ├── deploy.sh
    ├── dockercompose.yaml
    ├── favicon.ico
    ├── index.html
    ├── logo192.png
    └── static/

## Usage
### To use this setup:

    1.Build and run Docker containers as described in the Docker Setup section.
    2.Configure Jenkins with the provided Jenkinsfile and required credentials.
    3.Monitor Jenkins for pipeline execution and deployment status.
## Troubleshooting
    *Docker Image Not Building: Ensure the Dockerfile is correct and all required files are present.
    *Jenkins Build Failing: Check the Jenkins logs for errors and ensure credentials are properly configured
=======
   To automate the process of building a Docker image and pushing it to Docker Hub based on code pushed to a specific branch, created two shell scripts: build.sh and deploy.sh.
     #### build.sh 
     ![build sh](https://github.com/user-attachments/assets/2a13dec3-b958-4d32-acb1-9d91dfa3744c)

>>>>>>> 58e1434bae2191a4aab308dfe8a8aac1cde13ca5
