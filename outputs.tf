output "instance_id_list" { 
  value = ["${aws_instance.terraform_tests.*.id}"] }

output "aws_vpc_id" {
  value = "${aws_vpc.terraform-vpc.id}"
}

