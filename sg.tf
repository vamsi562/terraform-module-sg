resource "aws_security_group" "roboshop_sg" {
  name        = var.sg_name[count.index]
  description = "Security group for roboshop project"
  vpc_id      = local.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = merge(local.common_tags,
    var.sg_tags,
    {
      Name = "${local.common_name_suffix}"
  })
}
