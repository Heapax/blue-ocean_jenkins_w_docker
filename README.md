# home_assignment

Note: Apparently the smallest image for python tagged apline, has some issues regarding Standard PyPi wheels 

# Installation Steps

## 1. Setup Jenkins environment using docker-compose
`sudo docker-compose up`

## 2. Run the following command to get the initial admin password for the Jenkins node, then enter it in the initial page of Jenkis
`sudo docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword`

After entering the initial password choose "Install recommanded plugins", after that create an admin account with a new password
