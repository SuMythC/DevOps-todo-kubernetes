# django-todo with jenkins, kubernetes HPA
A simple todo app built with django

![todo App](https://raw.githubusercontent.com/shreys7/django-todo/develop/staticfiles/todoApp.png)

 ## This is code originally belongs to https://github.com/shreys7/django-todo.git. I am using it for DevOps Project. Thank you.


### Setup
You will need django to be installed in you computer to run this app. Head over to https://www.djangoproject.com/download/ for the download guide

Once you have downloaded django, go to the cloned repo directory and run the following command

```bash
$ python manage.py makemigrations
```

This will create all the migrations file (database migrations) required to run this App.

Now, to apply this migrations run the following command
```bash
$ python manage.py migrate
```

One last step and then our todo App will be live. We need to create an admin user to run this App. On the terminal, type the following command and provide username, password and email for the admin user
```bash
$ python manage.py createsuperuser
```

That was pretty simple, right? Now let's make the App live. We just need to start the server now and then we can start using our simple todo App. Start the server by following command

```bash
$ python manage.py runserver
```

Once the server is hosted, head over to http://127.0.0.1:8000/todos for the App.

# Django Todo App with Jenkins, Kubernetes, and HPA

A simple Todo app built with Django, integrated with Jenkins for CI/CD, and deployed to Kubernetes with Horizontal Pod Autoscaling (HPA) for scaling.

![Screenshot_2](https://github.com/user-attachments/assets/5fcdde45-9c08-4b5a-a152-d4bce579606c)

## Overview

This project demonstrates how to deploy a Django-based Todo application using Jenkins for Continuous Integration and Continuous Deployment (CI/CD), Kubernetes for container orchestration, and Horizontal Pod Autoscaling (HPA) for automatic scaling of the application.

## Setup

### Prerequisites

- Docker
- Jenkins
- Kubernetes Cluster
- Docker Hub account

## Jenkins Configuration

### Jenkins Pipeline

The Jenkins pipeline automates the process of building, testing, and deploying the app. A pipeline script is created to define the steps involved in the CI/CD process.

### Creating Jenkins Credentials

1. **Kubernetes Credentials**: Ensure that you have the Kubernetes credentials set up in Jenkins for accessing the Kubernetes nodes.
2. **Docker Credentials**: Set up Docker username and password credentials in Jenkins for pushing images to Docker Hub.

![Jenkins Kubernetes Credentials](https://github.com/user-attachments/assets/5d0a451f-b2ef-44cd-a97b-5749c11d2275)

![Docker Credentials in Jenkins](https://github.com/user-attachments/assets/7060343d-780d-4efe-b3dd-914fbb17f50a)

## Kubernetes Setup

### Deployment to Kubernetes

The Django app is deployed to a Kubernetes cluster, and Horizontal Pod Autoscaling (HPA) is configured for automatic scaling based on CPU usage.

![Kubernetes Deployment](https://github.com/user-attachments/assets/5f2f925d-dc6f-4bc1-91ad-96c046681330)

![Kubernetes Deployment Success](https://github.com/user-attachments/assets/a727d4bf-8b11-4286-8047-ec7059ef2e04)

### Running Jenkins Job
**Jenkins Pipeline Screenshot**:
    ![Jenkins Pipeline](https://github.com/user-attachments/assets/47db77e3-bac5-4b2f-b95e-2e36a37140c5)
    
Once the Jenkins job is set up, you can run the job to build and deploy the application.

![Running Jenkins Job](https://github.com/user-attachments/assets/4e0cb21b-1788-44d1-a30d-1e6258e2e8d8)

The job runs successfully and the Docker image is built.

![Jenkins Job Success](https://github.com/user-attachments/assets/6fac2ac6-7e92-4691-b7c5-cf12347267b5)

## Docker Integration

Once the Jenkins job is complete, a Docker image is created and pushed to Docker Hub.

![Docker Image Created](https://github.com/user-attachments/assets/16300d28-dfa8-4cd6-bcdc-944bffa6dc63)

The image is successfully uploaded to Docker Hub:

![Docker Hub Image](https://github.com/user-attachments/assets/9715c63d-cfee-43a9-9fd8-d6add7633f54)


### Horizontal Pod Autoscaling

The Horizontal Pod Autoscaler (HPA) is enabled for the application to scale based on demand.

![HPA Running](https://github.com/user-attachments/assets/24428249-3186-41bd-9f8d-7f2169bebc8f)

