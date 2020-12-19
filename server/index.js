require('dotenv').config()
const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const port = 3000
const sequelize = require('./models');

sequelize.authenticate()
    .then(()=> console.log("Database Connected"))
    .catch(err => console.log("Error Connecting to DB", err))


app.get('/', (req, res) => {
    res.send('Hello There!')
})

app.listen(port, () => {
    console.log(`Postgres Backend listening at http://localhost:${port}`)
})