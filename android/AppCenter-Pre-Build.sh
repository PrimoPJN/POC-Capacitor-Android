#!/usr/bin/env bash

export CONTEXT_POC="Teste de Replace de Enviroments"
envsubst < ./app/src/main/assets/public/index.html > ./app/src/main/assets/public/index2.html
mv ./app/src/main/assets/public/index2.html ./app/src/main/assets/public/index.html

# Example: Change bundle name of an iOS app for non-production
#if [ "$APPCENTER_BRANCH" != "main" ];
#then
#    plutil -replace CFBundleDisplayName -string "\$(PRODUCT_NAME) Beta" $APPCENTER_SOURCE_DIRECTORY/MyApp/Info.plist
#fi