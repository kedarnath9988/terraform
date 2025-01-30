output name {
 value = data.aws_ami.ami_id.id
}

output vpu_info {
    value = data.aws_vpc.default
}