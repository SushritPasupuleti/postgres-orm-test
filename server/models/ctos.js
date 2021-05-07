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
    bio: {
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
    }, {
    classMethods: {
        getSearchVector: function () {
            return 'CTOSBio';
        },

        addFullTextIndex: function () {

            if (sequelize.options.dialect !== 'postgres') {
                console.log('Not creating search index, must be using POSTGRES to do this');
                return;
            }

            var searchFields = ['bio', 'first_name', 'last_name'];
            var Ctos = this;

            var vectorName = Ctos.getSearchVector();
            sequelize
                .query('ALTER TABLE "' + Ctos.tableName + '" ADD COLUMN "' + vectorName + '" TSVECTOR')
                .success(function () {
                    return sequelize
                        .query('UPDATE "' + Ctos.tableName + '" SET "' + vectorName + '" = to_tsvector(\'english\', ' + searchFields.join(' || \' \' || ') + ')')
                        .error(console.log);
                }).error(console.log);
        }
    }
})

//TestPrint
console.log('CTOS Model: ', Ctos)

module.exports = Ctos;