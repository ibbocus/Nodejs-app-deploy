#!/bin/bash

  scp -i ~/.ssh/DevOpsStudents.pem -r ~/Downloads/NodeJS-AWS-Deploy/starter-code/app/ ubuntu@ec2-54-171-92-213.eu-west-1.compute.amazonaws.com:/home/ubuntu/
  scp -i ~/.ssh/DevOpsStudents.pem -r ~/Downloads/NodeJS-AWS-Deploy/starter-code/environment/app ubuntu@ec2-54-171-92-213.eu-west-1.compute.amazonaws.com:/home/ubuntu/environment
  scp -i ~/.ssh/DevOpsStudents.pem -r ~/Downloads/NodeJS-AWS-Deploy/starter-code/environment/db ubuntu@ec2-54-154-53-144.eu-west-1.compute.amazonaws.com:/home/ubuntu/
  ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@ec2-54-154-53-144.eu-west-1.compute.amazonaws.com -i $ ./provisions.sh
  ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@ec2-54-171-92-213.eu-west-1.compute.amazonaws.com -i $ ./environment/app/provisions.sh

