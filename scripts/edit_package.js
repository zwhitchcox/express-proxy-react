const json = require('./package.json')
json.scripts['start-cra'] = "react-scripts start"
json.scripts['start-express'] = "ts-node --project server/tsconfig.json server/index.ts"
json.scripts['parallel'] = "npm-run-all --parallel start-react start-express"
const fs = require('fs')
fs.writeFileSync('./package.json', JSON.stringify(json, true, 2))