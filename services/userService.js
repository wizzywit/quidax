const secret = process.env['SECRET']
const jwt = require('jsonwebtoken')
const bcrypt = require('bcryptjs')
const db = require('../models')
const keysToCamel = require('../_helpers/keysToCarmelConverter')
const sendEmail = require('./sendMail')
const randString = require('../_helpers/randString')

module.exports = {
  authenticate,
  getAll,
  getById,
  create,
  update,
  delete: _delete,
  verify
}

const { User, Admin } = require('../_middleware/role')

async function authenticate({ email, password }) {
  const user = await db.User.scope('withHash').findOne({ where: { email } })
  let buff = Buffer.from(user.password, 'base64');
  const dbPassword = buff.toString('ascii');
  if (!user || !(await bcrypt.compare(password, dbPassword)))
    throw 'Email or password is incorrect'

  // authentication successful
  const token = jwt.sign({ sub: user.accUUID, role: user.role }, secret, {
    expiresIn: '7d',
  })
  return { ...omitHash(user.get()), token }
}

async function getAll() {
  return await db.User.findAll()
}

async function getById(id) {
  return await getUser(id)
}

async function create(params) {
  params = keysToCamel(params)
  // validate
  if (await db.User.findOne({ where: { email: params.email } })) {
    throw 'Email "' + params.email + '" is already taken'
  }

  if (params.password) {

    // hash password
    params.password = await bcrypt.hash(params.password, 10)

    // encode hash to base64
    let buff = Buffer.from(params.password)
    params.password = buff.toString('base64')
  }

  // generate random string for email verification
  const uniqueString = await randString()


  // save user
  const user = await db.User.create({...params, uniqueString})

  // send mail to registered user
  sendEmail(params.email, uniqueString)

  // return user without password
  return omitHash(user.get())
}

// verify endpoint
async function verify(params) {
  const {token: uniqueString} = params
  if(!uniqueString) {
    throw 'Invalid url'
  }
  const user = await db.User.findOne({where: { uniqueString }})
  if(user) {
    user.emailVerified = true
    user.uniqueString = ''
    await user.save()
  }else {
    throw 'User not found'
  }
}

async function update(id, params) {
  const user = await getUser(id)

  // validate
  const emailChanged = params.email && user.email !== params.email
  if (
    emailChanged &&
    (await db.User.findOne({ where: { email: params.email } }))
  ) {
    throw 'Email "' + params.email + '" is already taken'
  }

  // hash password if it was entered
  if (params.password) {
    params.password = await bcrypt.hash(params.password, 10)
    let buff = Buffer.from(params.password)
    params.password = buff.toString('base64')
  }

  // copy params to user and save
  Object.assign(user, params)
  await user.save()

  return omitHash(user.get())
}

async function _delete(id) {
  const user = await getUser(id)
  await user.destroy()
}

// helper functions

async function getUser(id) {
  const user = await db.User.findByPk(id)
  if (!user) throw 'User not found'
  return user
}

function omitHash(user) {
  const { password, ...userWithoutHash } = user
  return userWithoutHash
}
