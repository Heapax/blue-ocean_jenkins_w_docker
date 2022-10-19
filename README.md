# home_assignment

## System software requiremnets (Ubuntu)
Only requiremnt is to have the offcial Docker and Docker-compose instsalled on the user's system

## Installation Steps

### 1. Create custom Jenkins image
`docker build -t myjenkins:1.0 . -f jenkins.Dockerfile`

### 1. Setup Jenkins environment using docker-compose
`docker-compose up`

### 2. Run the following command to get the initial admin password for the Jenkins node, then enter it in the initial page of Jenkis at http://localhost:8080
`docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword`

After entering the initial password choose "Install recommanded plugins", afterwards create an admin account with a new password.

### 3. Create a new Pipeline item



## Pluging I used for my custom Jenkins image:
1. Docker
2. Docker-Pipeline
3. Github Pull Requesrt Builder
4. BlueOcean

## Considerations I took:
1. Apparently the smallest image for python tagged apline, has some issues regarding Standard PyPi wheels. So I used slim-buster tag instead, as it is the second smallest official python image tag available.
2. Fixated python version to 3.9 instead of latest.
3. Each step gets executed in a different image (layer caching is available), this is useful in the case where givin tool requires some other base image to be able to work (i.e. not the python:slim-buster image).
