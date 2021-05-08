const { Sequelize, DataTypes, QueryTypes } = require('sequelize')
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
    ctos_bio: {
        type: DataTypes.TSVECTOR,
    }
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
            return 'ctos_bio';
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
                }).success(function () {
                    return sequelize
                        .query('CREATE INDEX ctos_search_idx ON "' + Ctos.tableName + '" USING gin("' + vectorName + '");')
                        .error(console.log);
                }).success(function () {
                    return sequelize
                        .query('CREATE TRIGGER ctos_vector_update BEFORE INSERT OR UPDATE ON "' + Ctos.tableName + '" FOR EACH ROW EXECUTE PROCEDURE tsvector_update_trigger("' + vectorName + '", \'pg_catalog.english\', ' + searchFields.join(', ') + ')')
                        .error(console.log);
                }).error(console.log);

        },

        search: function (query) {
            if (sequelize.options.dialect !== 'postgres') {
                console.log('Search is only implemented on POSTGRES database');
                return;
            }

            var Ctos = this;

            query = sequelize.getQueryInterface().escape(query);
            console.log(query);

            return sequelize
                .query('SELECT * FROM "' + Ctos.tableName + '" WHERE "' + Ctos.getSearchVector() + '" @@ plainto_tsquery(\'english\', ' + query + ')', Ctos);
        }
    }
})

Ctos.addFullTextIndex = function () {

    if (db.options.dialect !== 'postgres') {
        console.log('Not creating search index, must be using POSTGRES to do this');
        return;
    }

    var searchFields = ['bio', 'first_name', 'last_name'];
    var Ctos = this;

    var vectorName = Ctos.getSearchVector();
    db
        .query('ALTER TABLE "' + Ctos.tableName + '" ADD COLUMN "' + vectorName + '" TSVECTOR')
        .then(function () {
            console.log("Column added: Adding updating values")
            return db
                .query('UPDATE "' + Ctos.tableName + '" SET "' + vectorName + '" = to_tsvector(\'english\', ' + searchFields.join(' || \' \' || ') + ')')
                .catch(console.log);
        }).then(function () {
            console.log("Values added: Creating Index")
            return db
                .query('CREATE INDEX np_search_idx ON "' + Ctos.tableName + '" USING gin("' + vectorName + '");')
                .catch(console.log);
        }).then(function () {
            console.log("Index created: Adding trigger");
            return db
                .query('CREATE TRIGGER np_vector_update BEFORE INSERT OR UPDATE ON "' + Ctos.tableName + '" FOR EACH ROW EXECUTE PROCEDURE tsvector_update_trigger("' + vectorName + '", \'pg_catalog.english\', ' + searchFields.join(', ') + ')')
                .catch(console.log);
        }).then(function () {
            console.log("Everything worked!")
        }).catch(console.log);

}

Ctos.getSearchVector = function () {
    return 'ctos_bio';
},

    Ctos.search = function (query) {
        if (db.options.dialect !== 'postgres') {
            console.log('Search is only implemented on POSTGRES database');
            return;
        }

        var Ctos = this;

        // query = db.getQueryInterface().escape(query);
        console.log(query);

        return db
            .query('SELECT * FROM "' + Ctos.tableName + '" WHERE "' + Ctos.getSearchVector() + '" @@ plainto_tsquery(\'' + query + '\');', {
                logging: console.log,
                plain: false,
                raw: false,
                type: QueryTypes.SELECT
            });
    }

//TestPrint
console.log('CTOS Model: ', Ctos)

module.exports = Ctos;