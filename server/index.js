require('dotenv').config()
const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const port = 3000
const sequelize = require('./models');

sequelize.authenticate()
    .then(() => console.log("Database Connected"))
    .catch(err => console.log("Error Connecting to DB", err))


app.get('/', (req, res) => {
    res.send('Hello There!')
})

app.get('/ctos-preview', (req, res) => {
    sequelize.Ctos.findAll().then(
        ctos_model => {
            console.table(ctos_model);
            res.send(ctos_model)
        }
    )
        .catch(
            err => {
                console.log(err)
                res.send(err)
            }
        )
})

app.listen(port, () => {
    console.log(`Postgres Backend listening at http://localhost:${port}`)
})