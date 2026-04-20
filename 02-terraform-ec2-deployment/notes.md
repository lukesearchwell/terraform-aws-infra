# Terraform EC2 Deployment

## Script without IP address
Initially I configured `variables.tf` with an `allowed_ssh_cidr` variable. The purpose of this variable was to specify the IP address that would be allowed to access the instance once created via SSH.

Rather than having my public IP on this repository, I amended `main.tf` to include:
```js
locals {
  allowed_ssh_cidr = "${chomp(data.http.my_ip.response_body)}/32"

```
This code will go through the following steps:
1. Terraform calls checkip.amazonaws.com
2. Gets my current public IP
3. Appends "/32"
4. Uses `"[my public IP]"/32` in the security group rule.


## Key pair naming
terraform had issues with.pem?