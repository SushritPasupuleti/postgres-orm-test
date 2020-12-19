const express = require('express')
const bodyParser = require('body-parser')
const { Sequelize } = require('sequelize')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello There!')
})

app.listen(port, () => {
  console.log(`Postgres Backend listening at http://localhost:${port}`)
})