resource "aws_security_group" "ec2" {
  name_prefix = "${var.name}-ec2-"
  vpc_id      = "${var.vpc_id}"
  tags        = "${merge(map("Name", "${var.name}-ec2"), var.tags)}"

  lifecycle {
    create_before_destroy = true
  }
}
resource "aws_security_group_rule" "ec2_open" {
   description              = "for ssh"
   type                     = "ingress"
   from_port                = 22
   to_port                  = 22
   protocol                 = "tcp"
   security_group_id        = "${aws_security_group.ec2.id}"
   cidr_blocks              = ["0.0.0.0/0"]
 }

 resource "aws_security_group_rule" "http" {
   description              = "for http"
   type                     = "ingress"
   from_port                = "${var.application_port}"
   to_port                  = "${var.application_port}"
   protocol                 = "tcp"
   security_group_id        = "${aws_security_group.ec2.id}"
   source_security_group_id = "${var.alb_sec_id}"
 }

resource "aws_security_group_rule" "ec2_egress_all" {
  description       = "Full egress"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "${aws_security_group.ec2.id}"
  cidr_blocks       = ["0.0.0.0/0"]
}

