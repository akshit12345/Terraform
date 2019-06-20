# EC2

resource "aws_instance" "this" {
  ami                     = "${var.ami_id}"
  # vpc                     = "${var.vpc_id}"
  subnet_id               = "${var.ec2_subnet_id}"
  instance_type           = "${var.instance_type}"
  vpc_security_group_ids  = ["${var.sg_id_ec2}"]
 # ebs_optimized           = "false"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  key_name                = "${var.key_name}" 
  tags                    = "${var.tags}"
  volume_tags             = "${var.tags}"
  #disable_api_termination = "${var.data_protection}"
  #user_data               = "${var.user_data}"
  iam_instance_profile    = "${var.iam_instance_profile}"

  root_block_device {
    volume_size           = "${var.volume_size}"
    #delete_on_termination = "${var.data_protection ? false : true}"
  }
}


