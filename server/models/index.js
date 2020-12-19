const { Sequelize } = require('sequelize')

module.exports = new Sequelize(process.env.DATABASE, process.env.DBUSERNAME, process.env.DBPASSWORD, {
    host: 'localhost',
    port: '5433', //specific to my device. leave default for rest.
    dialect: 'postgres'
})