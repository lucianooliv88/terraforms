resource "aws_instance" "terraform_tests" {
    ami = "ami-0fc970315c2d38f01"
    instance_type = "t2.micro"
    vpc_security_group_ids =  [ "${aws_security_group.terraform_public_sg.id}" ]
    subnet_id = "${aws_subnet.terraform-subnet_1.id}"
    key_name               = "green-blue"
    count         = 1
    associate_public_ip_address = true
    tags = {
      Name              = "terraform_ec2_wapp_awsdev"
      Environment       = "development"
      Project           = "DEMO-TERRAFORM"
    }
}

