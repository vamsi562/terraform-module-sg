resource "aws_security_group" "roboshop_sg" {
  for_each    = toset(var.sg_name)
  name        = each.value
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
