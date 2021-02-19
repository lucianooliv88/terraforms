output "instance_id_list"     { value = ["${aws_instance.terraform_tests.*.id}"] }
