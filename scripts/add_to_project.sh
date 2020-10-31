#!/bin/bash
yarn add ts-node typescript express express-http-proxy http-proxy-middleware npm-run-all
mkdir -p server
pushd server
curl -L -O https://raw.githubusercontent.com/zwhitchcox/ref-express-proxy-react/main/server/index.ts
curl -L -O https://raw.githubusercontent.com/zwhitchcox/ref-express-proxy-react/main/server/tsconfig.json
popd
mkdir -p .vscode
pushd .vscode
curl -L -O https://raw.githubusercontent.com/zwhitchcox/ref-express-proxy-react/main/.vscode/tasks.json
popd
curl -L -O https://raw.githubusercontent.com/zwhitchcox/ref-express-proxy-react/main/.env
# echo -e "\e[32madd the following scripts to your package.json"
# echo ""
# echo  '"scripts": {
#     "start-cra": "react-scripts start",
#     "start-express": "ts-node --project server/tsconfig.json server/index.ts",
#     "parallel": "npm-run-all --parallel start-react start-express",
# ...'
# echo -e "\e[39m"
curl -L -O https://raw.githubusercontent.com/zwhitchcox/ref-express-proxy-react/main/scripts/edit_package.js
node edit_package.js
rm edit_package.js
