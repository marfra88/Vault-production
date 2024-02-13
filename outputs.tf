output "instance_details" {
  value = [
    for instance in aws_instance.vault-node :
    {
      instance_id       = instance.id
      public_ip         = instance.public_ip
      availability_zone = instance.availability_zone
    }
  ]
}