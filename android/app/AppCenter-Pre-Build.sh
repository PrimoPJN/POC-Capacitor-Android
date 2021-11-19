#!/usr/bin/env bash

export CONTEXT_POC="Teste de Replace de Enviroments"
envsubst < ./src/main/assets/public/index.html > ./src/main/assets/public/index2.html
mv ./src/main/assets/public/index2.html ./src/main/assets/public/index.html

# Example: Change bundle name of an iOS app for non-production
#if [ "$APPCENTER_BRANCH" != "main" ];
#then
#    plutil -replace CFBundleDisplayName -string "\$(PRODUCT_NAME) Beta" $APPCENTER_SOURCE_DIRECTORY/MyApp/Info.plist
#fi