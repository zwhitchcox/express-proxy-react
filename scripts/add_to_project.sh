#!/bin/bash
yarn add ts-node typescript express express-http-proxy http-proxy-middleware
mkdir -p server
pushd server
wget -O index.ts https://raw.githubusercontent.com/zwhitchcox/express-proxy-react/main/server/index.ts
wget -O index.tshttps://raw.githubusercontent.com/zwhitchcox/express-proxy-react/main/server/tsconfig.json
popd
mkdir -p .vscode
pushd .vscode
wget -O tasks.json https://raw.githubusercontent.com/zwhitchcox/express-proxy-react/main/.vscode/tasks.json
popd
echo "add the following scripts to your package.json"
echo ""
echo  '"scripts": {
    "start-cra": "react-scripts start",
    "start-express": "ts-node --project server/tsconfig.json server/index.ts",
    "parallel": "npm-run-all --parallel start-react start-express",
...'