#!/bin/sh

PROJECT_NAME="$1"
cd ..
cd $PROJECT_NAME
yarn add react-native-app-auth
git add .
git commit -m "installing package react-native-app-auth"
cd ios
echo "platform :ios, '10.0'\ntarget '$PROJECT_NAME' do\n  pod 'AppAuth', '>= 0.91'\n  pod 'yoga', path: '../node_modules/react-native/ReactCommon/yoga/'\n  pod 'React', path: '../node_modules/react-native'\nend\n" >> Podfile
pod install
cd ..
echo ios/Pods >> .gitignore
git add .
git commit -m "installing pods"
