const { Sequelize, DataTypes } = require('sequelize')
const db = require('./index');

const Ctos = db.define('ctos', {
    id: {
        type: DataTypes.UUID,
        primaryKey: true,
        allowNull: false,
        defaultValue: Sequelize.literal('uuid_in((md5((random())::text))::cstring)')
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
        type: DataTypes.UUID,
        allowNull: true
    },
},
    {
        timestamps: false,
        hooks: {
            afterCreate: function (res, options) {
                console.log("After Create", res.dataValues.id)
            }
        }
    })

//TestPrint
console.log('CTOS Model: ', Ctos)

module.exports = Ctos;