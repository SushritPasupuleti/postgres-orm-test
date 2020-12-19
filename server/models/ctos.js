const { Sequelize, DataTypes } = require('sequelize')
const db = require('./index');

const Ctos = db.define('ctos', {
    id: {
        type: DataTypes.BIGINT
    },
    first_name: {
        type: DataTypes.STRING
    },
    last_name: {
        type: DataTypes.STRING
    },
    email_name: {
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
})

//TestPrint
console.log('CTOS Model: ', Ctos)

module.exports = Ctos;