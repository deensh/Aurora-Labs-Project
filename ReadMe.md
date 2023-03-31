# **Aurora-Labs-Project**

* This Project jenkins service, that include:
  * Aurora-Labs-Project job, 




## **Getting started**

To run jenkins, you have to build the docker image first, also you need docker and docker-compose to be installed.

1. Build docker image, run : `/bin/bash build_docker.sh`.
2. Run your docker with docker-compose: `docker-compose up -d`.
3. The app will start running on http://localhost:8080.
4. Login, with username and password from dokcer compose file.
5. Build Aurora-Labs-Project job.
6. Push commit to the repo. 
7. 


## **Expose Connection**

* POST _**/scale/deployment?replication=<replication>&deployment_name=<deployment_name>**_: 
Scales the specified deployment by the given number of replicas (scale parameter).
Returns a success message if the scaling operation was successful,
or an error message if the operation failed.



## **Example usage**

* First make sure you are not using any VPN, and your internet connection is from Israel (in order to run APP in HTTPS).

* To scale deployment named wsc-deployment-2 to 4 replicas:  `curl -k -X POST 'https://localhost:9000/scale/deployment?replication=4&deployment_name=wsc-deployment-2'`.

* To monitor namespace named wsc: `curl -k -X POST 'https://localhost:9000/monitoring/pods?namespace=wsc'`.

* To Restart deployment named wsc-deployment-2:  `curl -k -X POST 'https://localhost:9000/restart/deployment?deployment_name=wsc-deployment-2'`.

* To preform heath check: `curl -k -X POST 'https://localhost:9000/health'`