resource "aws_cloudformation_stack" "ec2_instance_stack" {
  name = "EC2InstanceStack"
  template_body = <<EOF
{
  "AWSTemplateFormatVersion": "2010-09-09",
  "Resources": {
    "Ec2Instance": {
      "Type": "AWS::EC2::Instance",
      "Properties": {
        "ImageId": "ami-089313d40efd067a9",
        "InstanceType": "t2.micro",
        "KeyName": "my-keypair",
        "SecurityGroups": ["${aws_security_group.instance_sg.name}"]
      }
    }
  }
}
EOF
}

resource "aws_security_group" "instance_sg" {
  name = "instance_sg"
  description = "Security group for the EC2 instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
