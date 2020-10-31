### Express Proxy React

This is meant to be an example for proxying an express webserver to a [CRA](https://reactjs.org/docs/create-a-new-react-app.html).

The app listens on port 4000 and forwards to 3000 during development, and serves the static build folder during production.



### To implement in your own project

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

Add the [server](/server/index.ts) code to your `server` directory.



#### Running

Start your CRA web server (`yarn start`).

In another terminal, start the express web server: `ts-node server index.ts`


<!-- #### Running with script -->