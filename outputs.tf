output "random_passwords" {
  value = random_password.password.*.result
  sensitive = true
}
