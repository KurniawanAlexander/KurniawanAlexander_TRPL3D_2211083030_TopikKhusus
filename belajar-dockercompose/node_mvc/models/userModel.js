const db = require('../config/db');

module.exports = {
    getAll: (callback) => {
        db.query('SELECT * FROM users', callback);
    },
    create: (data, callback) => {
        if ('id' in data) delete data.id;
        db.query('INSERT INTO users SET ?', data, callback);
    },
    update: (id, data, callback) => {
        db.query('UPDATE users SET ? WHERE id = ?', [data, id], callback);
    },
    delete: (id, callback) => {
        db.query('DELETE FROM users WHERE id = ?', [id], callback);
    },
    findById: (id, callback) => {
        db.query('SELECT * FROM users WHERE id = ?', [id], callback);
    }
};
