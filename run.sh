#!/bin/bash

var=$1

terraform init -input=false
terraform plan -input=false -var-file 'instance=${var}' -lock=false
terraform apply -input=false -var-file 'instance=${var}' -auto-approve


var=$2

terraform init -input=false
terraform plan -input=false -var-file 'sns_topic_name=${var}' -lock=false
terraform apply -input=false -var-file 'sns_topic_name=${var}' -auto-approve
