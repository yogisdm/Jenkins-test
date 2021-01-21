provider "aws" {
	region = var.aws_region
}

#Find the latest available AMI with mediawiki based on Name Tag
data "aws_ami" "mediawikiami" {
  owners = ["self"]
  most_recent = true
  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "tag:Name"
    values = ["image-build-mediawiki"]
  }
}

resource "aws_security_group" "sec_group" {
  name   = "Jenkins-SG"
  vpc_id = "vpc-0d344d8f40eb95322"
}

#Provision an EC2 instance for hosting wediawiki server
resource "aws_instance" "mediawiki_server" {
	ami				= data.aws_ami.mediawikiami.id
	instance_type	= "t2.small"
	key_name         = "yogiassigment"
	subnet_id 		 = var.subnet_ID
	vpc_security_group_ids 		=  data.aws_security_group.sec_group.id
	tags = {
    	  Name		= "mediawiki_server"
	}
}

#Associate Elastic IP to the mediawiki server
resource "aws_eip_association" "eip_assoc_app" {
	instance_id	= aws_instance.mediawiki_server.id
	allocation_id	= var.mediawiki_ip
}
