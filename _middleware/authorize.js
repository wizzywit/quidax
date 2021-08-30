const jwt = require('express-jwt')
const secret  = process.env['SECRET']
const db = require('../models')

module.exports = authorize

function authorize(roles = []) {
  // roles param can be a single role string (e.g. Role.User or 'User')
  // or an array of roles (e.g. [Role.Admin, Role.User] or ['Admin', 'User'])
  if (typeof roles === 'string') {
    roles = [roles]
  }
  return [
    // authenticate JWT token and attach decoded token to request as req.user
    jwt({ secret, algorithms: ['HS256'] }),

    // attach full user record to request object
    async (req, res, next) => {
      // get user with id from token 'sub' (subject) property
      const user = await db.User.findByPk(req.user.sub)

      // check user still exists
      if (!user) return res.status(401).json({ message: 'Unauthorized' })
      else if (roles.length && !roles.includes(req.user.role))
        return res.status(403).json({ message: 'Forbidden' })

      // authorization successful
      req.user = user.get()
      next()
    },
  ]
}
