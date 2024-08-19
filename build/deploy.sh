#!bin/bash
if [[GIT.BRANCH == "origin/dev" ]];then
    sh "chmod +x build.sh"
    sh "build/build.sh"
    docker tag react-app sanjaykumar2001/dev
    docker push sanjaykumar2001/dev

elif[[GIT.BRANCH=="origin/master"]];then
    sh "chmod +x build/build.sh"
    sh "build/build.sh"
    docker tag react-app sanjaykumar2001/prod-repo
    docker push sanjaykumar2001/prod-repo
