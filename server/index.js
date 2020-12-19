require('dotenv').config()
const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const port = 3000
const sequelize = require('./models');

sequelize.authenticate()
    .then(() => console.log("Database Connected"))
    .catch(err => console.log("Error Connecting to DB", err))

sequelize.sync({ alter: true }).catch(err =>
    console.log("error: ", err)
);
console.log("All models were synchronized successfully.");


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

app.get('/ctos-add-random', (req, res) => {
    sequelize.Ctos.create({
        first_name: "Bruce",
        last_name: "Wayne",
        email: "wayne@wayneinc.com",
        gender: "Male",
        dob: "1988-02-25",
        income: "$24000000.00",
        details: "",
        skills: "I\'m Batman"
    }, {
        fields: [
            'first_name',
            'last_name',
            'email',
            'gender',
            'dob',
            'income',
            'details',
            'skills',
        ],
        returning: [
            'first_name',
            'last_name',
            'email',
            'gender',
            'dob',
            'income',
            'details',
            'skills',
        ]
    }).then(
        ctos_model => res.send(ctos_model)
    )
    // res.send("This will fail no matter what")
})

// app.get('/ctos-add-random', (req, res) => {
//     sequelize.Ctos.({
//         first_name: "Bruce",
//         last_name: "Wayne",
//         email: "wayne@wayneinc.com",
//         gender: "Male",
//         dob: "1988-02-25",
//         income: "$24000000.00",
//         details: "",
//         skills: "I\'m Batman"
//     })
//     res.send("This will fail no matter what")
// })

app.listen(port, () => {
    console.log(`Postgres Backend listening at http://localhost:${port}`)
})