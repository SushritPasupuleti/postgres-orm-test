const { Sequelize, DataTypes } = require('sequelize')
const db = require('./index');

const Ctos = db.define('ctos', {
    id: {
        type: DataTypes.BIGINT,
        primaryKey: true
    },
    first_name: {
        type: DataTypes.STRING
    },
    last_name: {
        type: DataTypes.STRING
    },
    email: {
        type: DataTypes.STRING
    },
    gender: {
        type: DataTypes.STRING
    },
    dob: {
        type: DataTypes.DATE
    },
    income: {
        type: DataTypes.STRING
    },
    details: {
        type: DataTypes.STRING
    },
    skills: {
        type: DataTypes.STRING
    },
    item_id: {
        type: DataTypes.BIGINT
    },
},
    {
        timestamps: false
    })

//TestPrint
console.log('CTOS Model: ', Ctos)

module.exports = Ctos;