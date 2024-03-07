output "vault_nodes" {
  value = [
    for instance in aws_instance.vault-node :
    {
      instance_id       = instance.id
      public_ip         = instance.public_ip
      private_ip        = instance.private_ip
      availability_zone = instance.availability_zone
    }
  ]
}
