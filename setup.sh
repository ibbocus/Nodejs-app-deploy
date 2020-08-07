#!/bin/bash

  scp -i ~/.ssh/DevOpsStudents.pem -r ~/Downloads/NodeJS-AWS-Deploy/starter-code/app/ ubuntu@ec2-52-212-156-251.eu-west-1.compute.amazonaws.com:/home/ubuntu/
  scp -i ~/.ssh/DevOpsStudents.pem -r ~/Downloads/NodeJS-AWS-Deploy/starter-code/environment/app ubuntu@ec2-52-212-156-251.eu-west-1.compute.amazonaws.com:/home/ubuntu/environment
  ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@ec2-52-212-156-251.eu-west-1.compute.amazonaws.com -i $ ./environment/app/provisions.sh


