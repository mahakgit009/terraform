variable "filename" {
    default = "/mnt/terraform/terraform-variables/devops-automated.txt"

}
variable "content" {
    default = "This is automated generated default value"  
}
variable "devops_op_trainer" {}

variable "content_map" {
    type = map
    default = {
        "content1" = "this is a cool content 1"
        "content2" = "this is a cool content 2"
    } 
}
variable "file_list" {
    type = list
    default = ["/mnt/terraform/terraform-variables/file_1.txt","/mnt/terraform/terraform-variables/file_2.txt"]   
}

variable "aws_ec2_object" {
    type = object({
        name = string
        instances = number
        keys = list(string)
        ami = string
    })
    default = {
      ami = "ubuntu:18.04"
      instances = 4
      keys = ["key1.pem","key2.pem"]
      name = "test_ec2_instance"
    }
}