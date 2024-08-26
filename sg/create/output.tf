output "sg_id" {
  description = "ID of the Security group"
  value       = aws_instance.web_server.id
}