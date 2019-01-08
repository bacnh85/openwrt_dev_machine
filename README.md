# Purpose

OpenWrt Build Environment for MacOs. 

Features:  
- Mount .ssh local folder to the docker .ssh, so you can access to your own git repos  
- Config nfsmount. NFS mount is the alternative to overcome `osxfs` performance  
- Build environment: Ubuntu 14.04 LTS

# Install

## Case-sensitive partition setup

Case-sensitive file system is required to build OpenWrt, thus it can be created under `Disk Utility`.

In latest Macos Mojave with APS Volume (APFFS), you can just add new APFS (Case-sensitive) volume, so both can share the same SSD volume. 

## Setup NFS server

Default NFS export folder is `/Users`, pls change to other in line# 53 if your docker folder is not under `/Users`

```
$ sh setup_native_nfs_docker_osx.sh
```

## Config 

Build image and start the build environment:

```
$ docker-compose build
$ sh start.sh
```

## Build your openwrt

Under the docker console, pls follow with the [main upstream build usage
](https://openwrt.org/docs/guide-developer/build-system/use-buildsystem).

# Credit

1. Setup [NFS Native script](https://github.com/pascalandy/Docker-For-Mac-with-Native-NFS) from @pascalandy

