#!/bin/bash
yarn add ts-node typescript express express-http-proxy http-proxy-middleware
mkdir -p server
pushd server
wget https://raw.githubusercontent.com/zwhitchcox/express-proxy-react/main/server/index.ts
wget https://raw.githubusercontent.com/zwhitchcox/express-proxy-react/main/server/tsconfig.json
popd
mkdir -p .vscode
pushd .vscode
wget https://raw.githubusercontent.com/zwhitchcox/express-proxy-react/main/server/tsconfig.json
popd