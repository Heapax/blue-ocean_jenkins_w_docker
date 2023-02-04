# Blue-Ocean Jenkins with Docker service

Provides a running Jenkins server with custom plugins, that will initiate a python job on any merge request.
All the system is run as container using a single cli commnad (e.i. docker-compose up)

## Pluging I Used for my Custom Jenkins Image:
1. Docker
2. Docker-Pipeline
3. Github Pull Requesrt Builder
4. BlueOcean

## System Software Requiremnets:
The only requiremnt is to have the offcial Docker and Docker-compose instsalled on the user's system, and user has access to docker commands or sudo.

## Installation Steps:

### 1. Create Custom Jenkins Image
`sudo docker build -t myjenkins:2.361.2-jdk11 . -f jenkins.Dockerfile`

### 2. Setup Jenkins environment using docker-compose
`sudo docker-compose up -d`

### 3. Initiate Jenkins
Run the following command to get the initial admin password for the Jenkins node, then enter it in the initial page of Jenkis at http://localhost:8080

`sudo docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword`

After entering the initial password choose "Install recommanded plugins", afterwards create an admin account with a new password.

### 3. Create a New Pipeline Item
From the Jenkins main page, click on "New Item" on the left-hand panel, then choose "Pipeline" and give a name.
Configure the Pipeline inside of Jenkins in the following way: Under "General" tik the checkbox that says "GitHub Project", udner the title "Build Triggers" tik the checkbox "GitHub hook trigger for GITScm polling".
Under the "Pipeline" section choose "Pipeline script from SCM", under "SCM" choose "GIT" and provide the GitHub repository URL in the field named "Repository URL", then under the title "Branches to build" edit the text field with the name of the master branch, in this case it is "main" and lastly click "Save".

### 4. Setup Webhook on GitHub
In the GitHub project repository, click on "Settings" option and choose "Webhooks" form the left-hand panel, click "Add webhook" and enter "http://<IP_OF_JNEKINS_NODE>:8080/github-webhook/" under the "Payload URL" title.
Next under "Content type" choose "application/json", under the titile "Which events would you like to trigger this webhook" choose "Let me select individual events" and then tik the checkbox with the name "Pull requests" then click "Add webhook".

## Considerations I Took:
1. Apparently the smallest image for python tagged apline, has some issues regarding Standard PyPi wheels. So I used slim-buster tag instead, as it is the second smallest official python image tag available.
2. Fixated python version to 3.9 instead of latest.
3. Each step gets executed in a different image (layer caching is available), this is useful in the case where givin tool requires some other base image to be able to work (i.e. not the python:slim-buster image).
4. The tag I gave the custom Jenkins image represents the version of the Jenkins base image and the JDK version used, for better tracking of the image.
5. I wasn't being fancy with the git commit messages or even descriptive due to working solo and on a deadline.
6. Added a "format" and "lint" stages as part of a best-practice when working with Python Pipeline projects.
7. Added BlueOcean plugin for a nicer UI and better UX.
