# ITS - Project A
## _Automation with Ansible_

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Dillinger is a cloud-enabled, mobile-ready, offline-storage compatible,
AngularJS-powered HTML5 Markdown editor.

- Type some Markdown on the left
- See HTML in the right
- ✨Magic ✨

## Features

- Import a HTML file and watch it magically convert to Markdown
- Drag and drop images (requires your Dropbox account be linked)
- Import and save files from GitHub, Dropbox, Google Drive and One Drive
- Drag and drop markdown and HTML files into Dillinger
- Export documents as Markdown, HTML and PDF

Markdown is a lightweight markup language based on the formatting conventions
that people naturally use in email.
As [John Gruber] writes on the [Markdown site][df1]

> The overriding design goal for Markdown's
> formatting syntax is to make it as readable
> as possible. The idea is that a
> Markdown-formatted document should be
> publishable as-is, as plain text, without
> looking like it's been marked up with tags
> or formatting instructions.

This text you see here is *actually- written in Markdown! To get a feel
for Markdown's syntax, type some text into the left window and
watch the results in the right.

## Tech

A large spread of technologies will be deployed in this project:

- [Rocky Linux 8](https://rockylinux.org/) - An open-source enterprise operating system compatible with Red Hat Enterprise Linux
- [Ansible](https://www.ansible.com/) - An open source community project sponsored by Red Hat
- [Oracle VM VirtualBox](https://www.virtualbox.org/) -  An open-source type-2 hypervisor for x86 virtualization developed by Oracle Corporation
- [Vagrant](https://www.vagrantup.com/) - An open-source software product for building and maintaining portable virtual software development environments
- [Apache HTTP Server](https://httpd.apache.org/) - A free and open-source cross-platform web server software
- [Ngnix](https://www.nginx.com/) - A web server that can also be used as a reverse proxy
- [MySQL](https://www.mysql.com/) - An open-source relational database management system
- [Bind](https://www.isc.org/bind/) - A suite of software for interacting with the Domain Name System

And of course this project itself is open source with a [public repository](https://github.com/sofackj/its_project_a) on GitHub.

## Dependancies installation
### Set up the environment on your local machine
To be deployed, this project needs the support of a hypervisor (a type-2 hypervisor will be used in our explanation) and a Virtual Machine provisionner. 
Concerning the hyperviser software, it is recommended to use [Oracle VM VirtualBox](https://www.virtualbox.org/) for two reasons :

- Open source software
- Better compatibility with Vagrant than VMWare (in my case)

As explained above, [Vagrant](https://www.vagrantup.com/) will be our VM (Virtual Machine) provisionner. During the development of this project.

### Softwares version

| Software | Version |
| ------ | ------ |
| Oracle VM VirtualBox | [6.1](https://www.virtualbox.org/wiki/Download_Old_Builds) |
| Vagrant | [2.2.19](https://www.vagrantup.com/downloads) |

### Download or clone of this project repository
 - **Clone the repository in your operating system**
```sh
cd where/you/want/to/clone/
git clone https://github.com/sofackj/its_project_a
cd its_project_a
#OR
git clone https://github.com/sofackj/its_project_a directory/of/the/repo
cd directory/of/the/repo
```

- **Download the zip file of the project**

Go to the [project page](https://github.com/sofackj/its_project_a) :

- Click on the green button [Clone]
- Select [Download ZIP]
- Unzip the file [its_project_a-main.zip]

In the next step, few changes will be needed before starting the deployment.

# Security settings

 Creation of the **.vault_password.txt** file in the repository with your password [your_password]
 
```sh
# In your repo
# Linux and Mac OS
echo your_password > .vault_password.txt
# Powershell command
New-Item -Name .vault_password.txt -Value your_password
```

Replace the current content of the file [vault.yml] by :
```sh
# path/to/your/repo/ansible_project/group_vars/all/vault
---
vault_ssh_pass: "vagrant"
vault_db_pass: "your_database_password"
```

> Note: Don't worry, at the end we will encrypt the vault.yml file to secure our sensitive data. for the moment, the password you set up won't be needed for the following part.

# DNS Settings

As for 

# Start the deployment

Once, everything is setup. Enter to the vagrant_project directory and start the process with the command [vagrant up]

```sh
# path/to/your/repo/vagrant_project/
vagrant up
```

# Version of all infrastructures and softwares  deployed

| Software | Version |
| ------ | ------ |
| Rocky linux | [8.6](https://app.vagrantup.com/bento/boxes/rockylinux-8.6) |
| Ansible | [2.12.2 (core)](https://docs.ansible.com/ansible/latest/roadmap/ROADMAP_2_12.html) |
| Apache HTTP Server | [2.4.37](https://httpd.apache.org/docs/2.4/) |
| MySQL | [8.0.26](https://dev.mysql.com/doc/) |
| Nginx | [1.14.1](https://nginx.org/en/docs/) |
| Bind | [9.11.36](https://bind9.readthedocs.io/en/v9_18_7/) |

# What next ?

- **Security** : For all servers, creation of a user while generating a password
- **Web server** : 
    - Multiple websites hosting: via different ports
    - Setup the website via Git (currently using templates)
- **Database server**:
    - Creation of a database by website
    - Share the database between multiple websites
- **Reverse-proxy server**:
    - Redirect multiple websites
- **DNS-server**:
    - Add the server name linked to the IP address to the reverse-proxy server

This project is my first automation project for the deployment of infrastructures and code. I hope you enjoy it. Don't hesitate to contact me if you have further questions.

## License

**ITS Service** (ITS Group)
**The Nuum Factory**

** Currently in a Devops bootcamp, I really love that field !!!**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>
