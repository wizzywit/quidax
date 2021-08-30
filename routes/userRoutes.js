const express = require('express')
const router = express.Router()
const userController = require('../controllers/userController')
const authorize = require('../_middleware/authorize')
const Role = require('../_middleware/role')

const {
  verify,
  authenticateSchema,
  authenticate,
  registerSchema,
  register,
  getAll,
  getCurrent,
  getById,
  updateSchema,
  update,
  _delete,
} = userController

// Routes
router.post('/login', authenticateSchema, authenticate)
router.post('/register', registerSchema, register)
router.get('/verify', verify)
router.get('/users/', authorize([Role.Admin]), getAll)
router.get('/users/current', authorize(), getCurrent)
router.get('/users/:id', authorize(), getById)
router.put('/users/:id', authorize(), updateSchema, update)
router.delete('/users/:id', authorize(), _delete)

module.exports = router
