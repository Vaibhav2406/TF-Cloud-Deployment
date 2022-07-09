resource "aws_instance" "EC2Jenkins" {
    ami = "ami-06eecef118bbf9259"
    instance_type = "t2.micro"
    tags = "Integration"
}
