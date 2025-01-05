output "lb_ip" {
  value = digitalocean_loadbalancer.wp_lb.ip
  description = "IP do Load Balancer"
}

output "wp_vm_ips" {
  value = digitalocean_droplet.vm_wp[*].ipv4_address
  description = "IPs das máquinas Wordpress"
}

output "nfs_vm_ip" {
  value = digitalocean_droplet.vm_nfs.ipv4_address
  description = "IP da máquina NFS"
}

output "database_username" {
  value     = digitalocean_database_user.wp_database_user.name
  description = "Usuário do banco de dados"
}

output "database_password" {
  value     = digitalocean_database_user.wp_database_user.password
  description = "Senha do banco de dados"
  sensitive = true
}