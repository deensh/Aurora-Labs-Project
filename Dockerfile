FROM jenkins/jenkins:latest

# Jenkins Docker ENV
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml

# Copy list of plugins
COPY config/plugins.txt /usr/share/jenkins/ref/plugins.txt

# Install plugins
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

# Coping config
COPY config/casc.yaml /var/jenkins_home/casc.yaml

# Coping job config file into docker
COPY config/config.xml /usr/share/jenkins/ref/jobs/Aurora-Labs-Project/config.xml

# Installing python3
USER root
RUN apt-get update
RUN apt-get install -y python3