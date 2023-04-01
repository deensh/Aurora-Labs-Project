# **Aurora-Labs-Project**

* This Project is a jenkins service, that include:
  * Aurora-Labs-Project job,which initiate python job on any merge request and print 'Devops is great'. 

  
## **Getting started**

To run jenkins, you have to build the docker image first, also you need docker and docker-compose to be installed.

1. Build docker image, run : `/bin/bash build_docker.sh`.
2. Run your docker with docker-compose: `docker-compose up -d`.
3. The app will start running on http://localhost:8080.
4. Expose your local server to the internet(you can use ngrok with https, or any other app)
5. Open https://github.com/deensh/Aurora-Labs-Project/settings/hooks and adjust your server ip.
6. Login to jenkins, with username and password from dokcer compose file.
7. Build Aurora-Labs-Project job.
8. Preform any merge request.