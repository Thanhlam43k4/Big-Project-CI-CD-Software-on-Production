#define AWS provider

provider "aws" {
    region = "ap-northeast-1"
}
locals{
    ami_id = "ami-0bcf3ca5a6483feba"
    key_id = "to-do-key"
    instance = "t2.medium"
}
#Create an EC2 instance for the master node
resource "aws_instance" "master_instance" {
  ami = local.ami_id
  instance_type = local.instance
  key_name = local.key_id
  vpc_security_group_ids = ["sg-0c10680ff7c539c1e"]
  tags = {
    Name = "Master-node"
  }
}


#Create an EC2 instance for the worker node 
resource "aws_instance" "worker-instance" {
  ami = local.ami_id
  instance_type = local.instance
  key_name = local.key_id
  vpc_security_group_ids = ["sg-0c10680ff7c539c1e"]
  tags = {
    Name = "Worker-node"
  }
}