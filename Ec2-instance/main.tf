#define AWS provider

provider "aws" {
    region = "ap-northeast-1"
}
locals{
    ami_id = "ami-0bcf3ca5a6483feba"
    key_id = "to-do-key"
    instance = "t2.micro"
}
#Create an EC2 instance for the master node
resource "aws_instance" "jenkins_instance" {
  ami = local.ami_id
  instance_type = local.instance
  key_name = local.key_id
  vpc_security_group_ids = ["sg-0c10680ff7c539c1e"]
  user_data = file("user-data-jenkins.sh")
  tags = {
    Name = "Jenkins"
  }
}
