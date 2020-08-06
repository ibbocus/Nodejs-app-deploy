#!/bin/bash

  scp -i ~/.ssh/DevOpsStudents.pem -r ~/Downloads/NodeJS-AWS-Deploy/starter-code/app/ ubuntu@ec2-52-208-117-22.eu-west-1.compute.amazonaws.com:/home/ubuntu/
  scp -i ~/.ssh/DevOpsStudents.pem -r ~/Downloads/NodeJS-AWS-Deploy/starter-code/environment/provisions.sh ubuntu@ec2-52-208-117-22.eu-west-1.compute.amazonaws.com:/home/ubuntu/
  ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@ec2-52-208-117-22.eu-west-1.compute.amazonaws.com -i $ ./provisions.sh


