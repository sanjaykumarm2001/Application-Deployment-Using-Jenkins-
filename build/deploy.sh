#!/bin/bash

# Ensure proper spacing in conditional statements
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    chmod +x build.sh
    build/build.sh
    docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
    docker tag react-app sanjaykumar2001/dev
    docker push sanjaykumar2001/dev

elif [[ $GIT_BRANCH == "origin/master" ]]; then
    chmod +x build.sh
    build/build.sh
    docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
    docker tag react-app sanjaykumar2001/prod-repo
    docker push sanjaykumar2001/prod-repo

else
    echo "Branch $GIT_BRANCH is not recognized. Exiting."
    exit 1
fi
