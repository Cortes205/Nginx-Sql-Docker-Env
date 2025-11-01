# Nginx & MySql Docker Environment

A docker environment to host web apps. The MySql database can be logged into via
the `db` container's command line, or via [phpMyAdmin](http://phpmyadmin.localhost:8080) which is hosted
on the `app` container.

## Setup

To setup the docker environment, you'll need to follow [this guide](https://github.com/Cortes205/Nginx-Sql-Docker-Env/wiki/Setup)

## Usage

To host your web apps in this container, you will need to create a `vhosts` directory (if you haven't already); this is where you will store all of your web projects. Next, you will need to create a [conf file](https://docs.nginx.com/nginx/admin-guide/basic-functionality/managing-configuration-files/) for your app in `nginx/conf.d`. There is already a conf file example in there; I say example, but don't delete it! That conf file is needed for your phpMyAdmin interface.

## About This Project

I have been working as a Co-op Full Stack Developer for the past few months, but have not had the chance to work with the creation
of docker environments. At work, everything is already set up for me, and all there is to do is work on the web side of things. 
The most I have done with my docker at work is make aliases to improve my workflow. As a challenge I decided to learn how to build a docker environment of my own! I have learned a lot and find it easier to debug problems with my environment at work. For example, 
the local version of one of our sites never worked for me; however, it didn't matter as I never had to work with it.
Recently, after working on this project, I was able to get it running again based on what I had learned about conf files! Although we do not use nginx conf files, they are relatively the same, just different syntax. Additionally, I just found out that they are teaching docker in one of my classes next semester, therefore, I am getting myself ahead by working on this project!

[LinkedIn](https://www.linkedin.com/in/cortes205/)
