const connection = require("./connection");

const database = {
    all(table, callback) {
        const string = `SELECT * FROM ${table};`;
        connection.query(string, (err, res) => {
            if (err) throw err;
            callback(res)
        })
    }
}

module.exports = database;