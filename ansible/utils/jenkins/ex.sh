#!/bin/bash
cd /opt/jenkins_directory/github/theToolKit

git pull origin dev/test

git checkout dev/test

cd funEndeavors

python3 dyslexic_dance.py "hardy-har"