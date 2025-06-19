const userModel = require('../models/userModel');

module.exports = {
    index: (req, res) => {
        userModel.getAll((err, users) => {
            if (err) throw err;
            res.render('index', { users });
        });
    },
    create: (req, res) => {
        userModel.create(req.body, (err) => {
            if (err) throw err;
            res.redirect('/');
        });
    },
    update: (req, res) => {
        userModel.update(req.body.id, req.body, (err) => {
            if (err) throw err;
            res.redirect('/');
        });
    },
    delete: (req, res) => {
        userModel.delete(req.body.id, (err) => {
            if (err) throw err;
            res.redirect('/');
        });
    }
};
