const mysql = require('mysql2');
const connection = mysql.createConnection({
    host: 'mysqldb',
    user: 'root',
    password: 'root',
    database: 'mvc_crud'
});
connection.connect((err) => {
    if (err) throw err;
    console.log('Connected to MySQL');
});
module.exports = connection;
