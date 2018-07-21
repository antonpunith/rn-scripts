# React Native Scripts

This repository aims to make react native development faster using command line tools on a Mac.

## React Native Init
in the command line run
```
./rn-init.sh [PROJECT_NAME]
```
This script
- initiliases react native
- adds git
- ignors package-lock.json and yarn.lock
- added eslint-config-rallycoding
- added .eslintrc

## Add App Auth

```
./app-auth.sh [PROJECT_NAME]
```
This script
- installs react-native-app-auth
- creates Podfile
- installs Pods
- commits on git
- TODO - ios & Android changes
