# MediaWiki-Deploy
<<<<<<< HEAD

This Job will deploy an instance of Mediawiki using the customized image built by the Image-build-job.
=======
This Job will deploy an single instance of Mediawiki using the customized image built by the Image-build-job.

VPC, Subnet, Security group details have to be given in the variables file

AMI is picked using the data source option.

Terraform version: v0.14.4

Providers:
AWS

A single instance will be created , the mediawiki application can be accessed using
http://elastic-ip-address/mediawiki

Further improvements:
1. Using auto-scaling feature to increase or decrease the number of instances depending on the load.
2. Terraform modules can be used for VPC, subnet and security group creation.
>>>>>>> fb6d9e554c4738eb6ce11e1ecc26d8595755f2d0
