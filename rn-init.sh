#!/bin/sh
cd ..
PROJECT_NAME="$1"
react-native init $PROJECT_NAME
cd $PROJECT_NAME
git init
echo -e package-lock.json >> .gitignore
echo -e yarn.lock >> .gitignore
git add .
git commit -m "initialising project"
yarn add eslint-config-rallycoding --dev
echo -e "{\n  \"extends\": \"rallycoding\",\n  \"parserOptions\": {\n    \"ecmaVersion\": 6,\n    \"ecmaFeatures\": {\n      \"arrowFunctions\": true\n    }\n  }\n}" >> .eslintrc
git add .
git commit -m "adding eslint"
