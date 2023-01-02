const connection = require("./connection");

const database = {
    all(table, callback) {
        const string = `SELECT * FROM ${table};`;
        connection.query(string, (err, res) => {
            if (err) throw err;
            callback(res)
        })
    },
    oneById(table, id, callback) {
        const string = `SELECT * FROM ${table} WHERE id = ${id};`;
        connection.query(string, (err, res) => {
            if (err) throw err;
            callback(res)
        })
    }
}

module.exports = database;