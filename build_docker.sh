#!/bin/bash

export SERVICE_NAME=jenkins

echo Building service: $SERVICE_NAME

docker build -t $SERVICE_NAME .
