#!/bin/bash
##########################################################################
# This is the AMAX automated install script for Linux and Mac OS.
# This file was downloaded from https://github.com/armoniax/amachain
#
# Copyright (c) 2017, Respective Authors all rights reserved.
#
# After June 1, 2018 this software is available under the following terms:
# 
# The MIT License
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
# https://github.com/armoniax/amachain/blob/master/LICENSE.txt
##########################################################################

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_ROOT="${SCRIPT_DIR}/.."
BUILD_DIR="${REPO_ROOT}/build"

OPT_LOCATION=$HOME/opt
BIN_LOCATION=$HOME/bin
LIB_LOCATION=$HOME/lib

CMAKE_BUILD_TYPE=Release
TIME_BEGIN=$( date -u +%s )
VERSION=2.0

txtbld=$(tput bold)
bldred=${txtbld}$(tput setaf 1)
txtrst=$(tput sgr0)

if [ ! -d "${BUILD_DIR}" ]; then
   printf "\\n\Error, build.sh has not run successfully. Please run ./build.sh first!\\n\\n"
   exit -1
fi

if ! pushd "${BUILD_DIR}" &> /dev/null; then
   printf "Unable to enter build directory ${BUILD_DIR}.\\n Exiting now.\\n"
   exit 1;
fi

if ! make install; then
   printf "\\nMAKE installing AMAX has exited with the above error.\\n\\n"
   exit -1
fi
popd &> /dev/null 

printf "\n${bldred}"
printf "\t      ___           ___           ___           ___      \n"
printf "\t     /\  \         /\__\         /\  \         |\__\     \n"
printf "\t    /::\  \       /::|  |       /::\  \        |:|  |    \n"
printf "\t   /:/\:\  \     /:|:|  |      /:/\:\  \       |:|  |    \n"
printf "\t  /::\~\:\  \   /:/|:|__|__   /::\~\:\  \      |:|__|__  \n"
printf "\t /:/\:\ \:\__\ /:/ |::::\__\ /:/\:\ \:\__\ ____/::::\__\ \n"
printf "\t \/__\:\/:/  / \/__/~~/:/  / \/__\:\/:/  / \::::/~~/~    \n"
printf "\t      \::/  /        /:/  /       \::/  /   ~~|:|~~|     \n"
printf "\t      /:/  /        /:/  /        /:/  /      |:|  |     \n"
printf "\t     /:/  /        /:/  /        /:/  /       |:|  |     \n"
printf "\t     \/__/         \/__/         \/__/         \|__|     \n"
printf "${txtrst}"

printf "==============================================================================================\\n"
printf "AMAX has been installed into ${OPT_LOCATION}/amax.cdt/bin!\\n"
printf "If you need to, you can fully uninstall using amaxcdt_uninstall.sh.\\n"
printf "==============================================================================================\\n\\n"

printf "For more information:\\n"
printf "AMAX website: https://eos.io\\n"
printf "AMAX resources: https://eos.io/resources/\\n"
printf "AMAX Stack Exchange: https://eosio.stackexchange.com\\n"
