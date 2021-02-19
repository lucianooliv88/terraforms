output "instance_id_list" { value = ["${aws_instance.terraform_tests.*.id}"] }

output "aws_vpc_id" { value = "${aws_vpc.terraform-vpc.id}" }

output "aws_subnet_subnet_1" { value = "${aws_subnet.terraform-subnet_1.id}" }
