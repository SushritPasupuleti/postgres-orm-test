require('dotenv').config()
const express = require('express')
const bodyParser = require('body-parser')
const { Sequelize } = require('sequelize')
const app = express()
const port = 3000

const sequelize = new Sequelize(process.env.DATABASE, process.env.DBUSERNAME, process.env.DBPASSWORD, {
    host: 'localhost',
    port: '5433', //specific to my device. leave default for rest.
    dialect: 'postgres'
})

sequelize.authenticate()
    .then(()=> console.log("Database Connected"))
    .catch(err => console.log("Error Connecting to DB", err))

app.get('/', (req, res) => {
    res.send('Hello There!')
})

app.listen(port, () => {
    console.log(`Postgres Backend listening at http://localhost:${port}`)
})