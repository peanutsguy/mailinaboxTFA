# mailinaboxTFA

This is a simple Terraform + Ansible implementation of [Mail-in-a-Box](https://mailinabox.email/) on a Microsoft Azure Virtual Machine.

## Requirements
1. Terraform ~>1.3.7
2. Ansible Core ~>2.14.1
3. Microsoft Azure Account
4. Domain name and DNS control

## What does it do?
1. Creates an Azure VM (Default = Standard B1s)
2. Runs the Mail-in-a-Box [setup script](https://mailinabox.email/setup.sh) unattended
3. Outputs the Public IP, Mail-in-a-Box admin user/pswd, Admin dashboard URL, Webmail URL

## What doesn't it do?
1. Create the required DNS records ([Guide](https://mailinabox.email/guide.html))
2. Unlist blacklisted IPs
3. Make you a coffee (even if you use `sudo`) and lots more...

## Credits
- [Mail-in-a-Box](https://github.com/mail-in-a-box/mailinabox)
- Gabriel McColl - [GitHub](https://github.com/gabrielmccoll/MailinBoxAzure/blob/master/Mailserver.ps1) & [Guide](https://cloudconfusion.github.io/azure/make-your-own-email-server-on-azure/)
