output "vpc_id" {
    value = aws_vpc.vpc.id
}
output "aws_public_subnets" {
    value = [aws_subnet.public_subnet[0].id, aws_subnet.public_subnet[1].id, aws_subnet.public_subnet[2].id ]
}
output "aws_private_subnet" {
    value = [aws_subnet.private_subnet[0].id, aws_subnet.private_subnet[1].id, aws_subnet.private_subnet[2].id ]
}
