# SMAP IN DOCKER

Shodan nmap in Docker (smap)
## How to use
Create the Docker image
```shell
sudo docker build . -t smap
```
Run the Docker with your command

Example with 1.1.1.1
```shell
sudo docker run --rm smap 1.1.1.1
```
Output
```shell
Starting Nmap 9.99 ( https://nmap.org ) at 2022-05-24 12:27 UTC
Nmap scan report for sni.cloudflaressl.com (1.1.1.1)
Host is up.

PORT    STATE SERVICE  VERSION
53/tcp  open  domain?  
443/tcp open  https?   

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 0.07 seconds
```

The folder `resources` is copy in the Docker when the Docker image are build.
If you put an file in `ressources` folder before the build, you can scan the entry insert the file.
Example
```shell
sudo docker run --rm smap -iL <name_of_the_file_in_ressources>
```
## Version
Version 1.0