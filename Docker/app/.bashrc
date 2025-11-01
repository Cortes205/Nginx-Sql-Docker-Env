# A bashrc file you can use to set up some aliases for your workspace
#
# NOTE: This script should only be modified on your local computer and not the docker container.
#   any changes made in docker will be lost if you build the container again
# 
# To put your changes in docker, run `docker compose up --build -d` in the directory of your docker-compose.yml
#
# @author   Alan Cortes
# @version  1.0.0
#

# These can be accessed in your docker command line by prefixing a `$`
#   Examples: cat $logs/phpmyadmin.access.log
main="/home/admin/web"
word="$main/wordscramble.com"
logs="/var/log/nginx"

alias aliases="cat ~/.bashrc"
alias c="clear"
alias main="cd $main"
alias word="cd $word"
alias perms="chown -R $(whoami):www-data . && chmod -R 755 ."
