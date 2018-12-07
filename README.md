# POC Bukalapak Cloud Engineer

This repository is intended for assignment on bukalapak cloud engineer test

## Configuration

Change variable on config.tfvars to meet your file location

| Variable | Value |
| -------- | ----- |
| user | your google cloud platform service account user |
| ssh_key | location to your ssh public key |
| credentials | location of your google cloud platform json account credentials |

## Running Command

Running this command to apply terraform to google cloud platform

```
git clone https://github.com/toxicas/bukalapak-cloudeng-poc
cd bukalapak-cloudeng-poc
terraform init -var-file=config.tfvars
terraform plan -out=plan.out -var-file=config.tfvars
terraform apply plan.out
```

### Note

There are some limitation to this :

* As this is simple poc, the MySQL Database, Redis, and NFS Server is already up before running this.
* I use instance template which i created before to bootstrap the wordpress installation.
* I used domain name 'poc1.tarigan.id' and point the A Records to active load balancer and this should not work on the fly as i need to update the A Records to point to newly created load balancer IP.
