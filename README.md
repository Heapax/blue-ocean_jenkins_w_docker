# home_assignment

Note: Apparently the smallest image for python tagged apline, has some issues regarding Standard PyPi wheels.

# Installation Steps

## 1. Setup Jenkins environment using docker-compose
`sudo docker-compose up`

## 2. Run the following command to get the initial admin password for the Jenkins node, then enter it in the initial page of Jenkis
`sudo docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword`

After entering the initial password choose "Install recommanded plugins", afterwards create an admin account with a new password.

## 3. Install Docker plugins for Jenkins node
As the admin user navigate to the "Manage Jenkins" tab, there search and select "Manage Plugins".
At the top of the search bar select "Available", and then type in the seach bar "docker".
Select the followin 3 plugins: Docker, Docker Pipeline, CloudBees Docker Build and Publish.
Then click "Download and install after restart" at the bottom of the page.