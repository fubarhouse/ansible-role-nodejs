#!/usr/bin/env bash

export NVM_NODEJS_ORG_MIRROR=http://nodejs.org/dist;
source {{ nvm_install_dir }}/nvm.sh && nvm "$@";
