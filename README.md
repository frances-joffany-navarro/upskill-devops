# Upskill in Devops ![Static Badge](https://img.shields.io/badge/In%20progress-royalblue)
This project is intended to showcase my learnings in my Devops journey. Started it on

## Objective
Using [https://github.com/frances-joffany-navarro/restaurant-css-framework](https://github.com/frances-joffany-navarro/restaurant-css-framework), the goal will be to run and host this website in different ways.

## Roadmap
The different ways:
1. [Local VM - Packages](#local-vm-packages) ![Static Badge](https://img.shields.io/badge/Done-darkgreen)
2. [Local VM - Containers](#local-vm-containers) ![Static Badge](https://img.shields.io/badge/Done-darkgreen)
3. [Cloud hosted VM - packages](#cloud-hosted-vm-packages) ![Static Badge](https://img.shields.io/badge/Done-darkgreen)
4. [Cloud hosted VM - containers](#cloud-hosted-vm-containers) ![Static Badge](https://img.shields.io/badge/Done-darkgreen)
5. [Kubernetes hosting - locally](#kubernetes-hosting-locally) ![Static Badge](https://img.shields.io/badge/To%20do-grey)
6. [Kubernetes hosting - cloud](#kubernetes-hosting-cloud) ![Static Badge](https://img.shields.io/badge/To%20do-grey)

<a id="local-vm-packages"></a>
### Local VM - Packages
1. Create and Configure an Ubuntu Desktop VM 22.04 in Virtualbox.
2. Clone repo into VM.
3. Install and configure the necessary software to run code *(php, database, web server)* using terminal.
4. Run your code locally in the VM and can access in VM's browser.
5. Access the website from laptop's OS instead from within the VM.
6. Automate the deployment of your code using **bash scripting**. See [bash-scripting folder](https://github.com/frances-joffany-navarro/upskill-devops/tree/main/bash-scripting)
7. Automate the deployment of your code using **Ansible**. See [ansible-quickstart](https://github.com/frances-joffany-navarro/upskill-devops/tree/main/ansible_quickstart)

<a id="local-vm-containers"></a>
### Local VM - Containers 
1. Start from a fresh new ubuntu VM.
2. Install **Docker** or podman as container engines.
3. Deploy 3 containers; 1 for the web server, 1 for the DB and 1 for php.
4. Get repo in the web server container.
5. Make the 3 containers work together and make site available from within the VM (look into exposing or exporting a port when running the web server container). See [docker-quickstart](https://github.com/frances-joffany-navarro/upskill-devops/tree/main/docker_quickstart).
6. Use **docker-compose** to orchestrate the deployment of the 3 containers and create a new web server image that clones repo on deployment. See [my-docker-compose](https://github.com/frances-joffany-navarro/upskill-devops/tree/main/my-docker-compose).

## Extra
- Delete and Reassociate Static IP 

<a id="cloud-hosted-vm-packages"></a>
### Cloud hosted VM - packages

<a id="cloud-hosted-vm-containers"></a>
### Cloud hosted VM - containers

<a id="kubernetes-hosting-locally"></a>
### Kubernetes hosting - locally

<a id="kubernetes-hosting-cloud"></a>
### Kubernetes hosting - cloud

## Acknowledgement
Bayani Carbone
