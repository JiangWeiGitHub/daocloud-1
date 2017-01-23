var express = require('express')
var fs = require('fs')

let app = express()
let port = '8080'

app.get('/', function(req, res){
  res.send(fs.readFileSync('/data/sample.json', 'utf8'))
})

app.listen(port, () => {
  console.log('Listening on port %d!', port)
})