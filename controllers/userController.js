const Joi = require('joi')
const validateRequest = require('../_middleware/validate-request')
const userService = require('../services/userService')

exports.authenticateSchema = (req, res, next) => {
  const schema = Joi.object({
    email: Joi.string().required().email(),
    password: Joi.string().required(),
  })
  validateRequest(req, next, schema)
}

exports.authenticate = (req, res, next) => {
  userService
    .authenticate(req.body)
    .then((user) => res.json(user))
    .catch(next)
}

exports.registerSchema = (req, res, next) => {
  const schema = Joi.object({
    email: Joi.string().required(),
    password: Joi.string().min(6).required(),
  })
  validateRequest(req, next, schema)
}

exports.register = (req, res, next) => {
  userService
    .create(req.body)
    .then((user) => res.json({ message: 'Registration successful' }))
    .catch(next)
}
exports.verify = (req, res, next) => {
  userService
    .verify(req.query)
    .then(() => res.json({ message: 'Email verification successful' }))
    .catch(next)
}

exports.getAll = (req, res, next) => {
  userService
    .getAll()
    .then((users) => res.json(users))
    .catch(next)
}

exports.getCurrent = (req, res, next) => {
  res.json(req.user)
}

exports.getById = (req, res, next) => {
  userService
    .getById(req.params.id)
    .then((user) => res.json(user))
    .catch(next)
}

exports.updateSchema = (req, res, next) => {
  const schema = Joi.object({
    first_name: Joi.string().empty(''),
    last_name: Joi.string().empty(''),
    email: Joi.string().empty(''),
    password: Joi.string().min(6).empty(''),
  })
  validateRequest(req, next, schema)
}

exports.update = (req, res, next) => {
  userService
    .update(req.params.id, req.body)
    .then((user) => res.json(user))
    .catch(next)
}

exports._delete = (req, res, next) => {
  userService
    .delete(req.params.id)
    .then(() => res.json({ message: 'User deleted successfully' }))
    .catch(next)
}
