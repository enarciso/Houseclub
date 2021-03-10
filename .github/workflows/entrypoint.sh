#!/bin/bash

VERSION_NAME=`grep -oP 'versionName "\K(.*?)(?=")' ./${APP_FOLDER}/build.gradle`
hub release create -a ./${APP_FOLDER}/build/outputs/apk/release/app-release.apk -m "v${VERSION_NAME}" $(date +%Y%m%d%H%M%S)