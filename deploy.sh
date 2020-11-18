#! /bin/bash

HOME="~/TRClient2"
DEPLOY="${HOME}/Deploy"
RELEASE="${HOME}/Release"
PASSWD="PWD"


cd ~
mkdir -p ${HOME}
mkdir -p ${DEPLOY}
mkdir -p ${RELEASE}

rm -rf ${DEPLOY}/*

cd ${RELEASE}

wget https://github.com/QiuCronus/zipfile/releases/download/v1.0/FTRClient.zip -o ${RELEASE}/FTRClient.zip -q

cd ${HOME}
rm -rf ./venv
python -m venv ./venv

cd ${DEPLOY}
unzip -P ${PASSWD} -q ${RELEASE}/FTRClient.zip -d .
chmod +x ./FTRClient



