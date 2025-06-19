const express = require('express');
const router = express.Router();
const userController = require('../controller/userController');

router.get('/', userController.index);
router.post('/create', userController.create);
router.post('/update', userController.update);
router.post('/delete', userController.delete);

module.exports = router;
