### Express Proxy React

This is meant to be an example for proxying an express webserver to a [CRA](https://reactjs.org/docs/create-a-new-react-app.html).

The app listens on port 4000 and forwards to 3000 during development, and serves the static build folder during production.

###  Add to your project with script

You can install the server and everything (as described in the next section) with [this script](scripts/add_to_project.sh) as well. Make sure you are in the project directory though.

```
wget -O add_to_project.sh https://raw.githubusercontent.com/zwhitchcox/ref-express-proxy-react/main/scripts/add_to_project.sh
bash add_to_project.sh
rm add_to_project.sh
```

### To implement in your own project yourself

#### Requirements

##### Global

```
yarn global add ts-node typescript
```
or
```
npm i -g ts-node typescript
```

##### In your project

```
yarn add express express-http-proxy http-proxy-middleware
```
or
```
npm i express express-http-proxy http-proxy-middleware
```

Add the [server](/server) code to your `server` directory.



#### Running

Start your CRA web server (`yarn start`).

In another terminal, start the express web server: `ts-node server index.ts`


#### Running with script

You can also run both the CRA and express server at the same time by adding the following npm scripts to your `package.json`:

```json
  "scripts": {
    "start-cra": "react-scripts start",
    "start-express": "ts-node --project server/tsconfig.json server/index.ts",
    "parallel": "npm-run-all --parallel start-react start-express",
...
```

For this you'll need to add `npm-run-all` and probably `ts-node` to your project

```
yarn add npm-run-all ts-node
```
or
```
npm i npm-run-all ts-node
```

Then you can run the CRA and express servers in parallel with `yarn parallel`

#### With VS Code Task

Simply copy the [tasks.json](.vscode/tasks.json) into your project directory, and press `Ctrl+Shift+R` and click Start Express/CRA to run the server/CRA in new terminals.

