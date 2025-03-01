# lab
This repo contains the code from various learning, experiences and tests I have done whilst on my continuous learning journey


## Domain
I have registered the domain philricelab.uk with cloudflare.
Cloudflare was chosen as this includes the use of cloudflare tunnels for free with the domain, and they will be used for external access into the lab environment.

## Hardware
I have the following hardware available for my homelab :

 - 3 X HP Elitedesk 705 mini pcs, 16gb RAM, 240GB harddisk. These were purchased secondhand specifically to be used as a kubernetes cluster
 - Synology DS923+ NAS. This is used as my general homestorage storage and also hosts several containers such as plex, overseer etc that make up my home media platform . It performs other services like backups and I will be configuring the kubernetes cluster to use the NAS for storage
 - Dell T610 server. An older server I have had for a while that is running Proxmox and I have mostly use for creating VMs for experimenting, plus this also has a good amount of storage available
 - APC 650VA 8 Socket UPS 
 - Netgear 8 port Gigabit switch
