#!/bin/sh -l

sh -c "echo $*";

git grep -nF -C1 -e show-widgets -e dark-theme -e chatbox -e beta-ui -e
set-logging-level -e database-connection -e caching-disabled -e
cache-timeout -e autorelease -e auto-deploy-lambda -e on-default-branch -e
autorelease-environments -e auto-deploy-env -e use-failover-database -e
show-nps-survery -e new-metrics-feature;

