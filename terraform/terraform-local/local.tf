resource "local_file" "devops" {
    filename = "/mnt/terraform/terraform-local/devops-automated.txt"
    content = "I want become the DevOps Engineer who knows Terraform"
}

resource "random_string"  "rand-str" {
length = 16
special = true
override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "rand-str" {
    value = random_string.rand-str[*].result
}