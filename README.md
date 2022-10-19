# home_assignment

Note: Apparently the smallest image for python tagged apline, has some issues regarding Standard PyPi wheels.

# Installation Steps

## 1. Create custom Jenkins image
`sudo docker build -t image_name:image_tag . -f jenkins-blueocean.Dockerfile`

## 1. Setup Jenkins environment using docker-compose
`sudo docker-compose up`

## 2. Run the following command to get the initial admin password for the Jenkins node, then enter it in the initial page of Jenkis at http://localhost:8080
`sudo docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword`

After entering the initial password choose "Install recommanded plugins", afterwards create an admin account with a new password.

## 3. Create a new Pipeline item
