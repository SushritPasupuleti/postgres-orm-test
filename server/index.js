require('dotenv').config()
const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const port = 5000

const sequelize = require('./models');
const { QueryTypes } = require('sequelize');

sequelize.authenticate()
    .then(() => console.log("Database Connected"))
    .catch(err => console.log("Error Connecting to DB", err))

// sequelize.sync({ alter: true }).catch(err => {
//     console.log("error: ", err)
// }
// );

app.use(bodyParser())

sequelize.sync().then(x => {
    // run only once
    console.log("Executing ADD FTS")
    sequelize.Ctos.addFullTextIndex();
}).catch(err => {
    console.log("error: ", err)
}
);
// sequelize.sync({ alter: true }).done(function () {
//     sequelize.Ctos.addFullTextIndex();
// });
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

app.get('/ctos-preview-raw', (req, res) => {
    sequelize.query('SELECT * FROM ctos', {
        raw: true,
        type: QueryTypes.SELECT
    }).then(
        records => {
            res.send(records)
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
            'id',
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
        ctos_model => {
            console.log(ctos_model.id)
            res.json(ctos_model.id)
        }
    )
})

app.get('/ctos-add-random-raw', (req, res) => {
    const first_name = 'Clark';
    const last_name = 'Kent';
    const email = 'clark@dailymail.us';
    const gender = 'Male';
    const dob = '1988-02-25';
    const income = '$15000';
    const details = '';
    const skills = 'Bad at Cosplay';

    sequelize.query(`INSERT INTO ctos 
    (first_name, last_name, email, gender, dob, income, details, skills)
    VALUES
    (
        '${first_name}',
        '${last_name}',
        '${email}',
        '${gender}',
        '${dob}',
        '${income}',
        '${details}',
        '${skills}'
    )
    `, {
        raw: true,
        type: QueryTypes.INSERT
    }).then(
        records => {
            res.send(records)
        }
    )
})

app.post('/ctos-search', (req, res) => {
    sequelize.Ctos.search(req.body.query).then(
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

//SELECT * FROM ctos WHERE ctos_bio @@ to_tsquery('function'); /// uses triggers and special column, faster too
//SELECT * FROM "ctos" WHERE to_tsvector(bio || ' ' || skills) @@ plainto_tsquery('customer poster'); // slow but works without triggers or any special columns