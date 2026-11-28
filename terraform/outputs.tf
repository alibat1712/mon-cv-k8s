output "instance_public_ip" {
  description = "Adresse IP publique du serveur k3s"
  value       = aws_instance.k3s_node.public_ip
}

output "ssh_command" {
  description = "Commande pour se connecter en SSH"
  value       = "ssh -i ~/.ssh/mon-cv-k8s ec2-user@${aws_instance.k3s_node.public_ip}"
}