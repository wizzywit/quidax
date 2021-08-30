const Joi = require('joi')
const validateRequest = require('../_middleware/validate-request')
const cartService = require('../services/cartService')


exports.cartSchema = (req, res, next) => {
    const schema = Joi.object({
        bookId: Joi.number().required(),
        quantity: Joi.number().required()
    })
    validateRequest(req, next, schema)
}
exports.itemSchema = (req, res, next) => {
    const schema = Joi.object({
        quantity: Joi.number().required()
    })
    validateRequest(req, next, schema)
}

exports.addToCart = (req, res, next) => {
    cartService
        .addToCart(req)
        .then(() => res.json({ message: 'Added to cart' }))
        .catch(next)
}
exports.getCart = (req, res, next) => {
    cartService
        .getCart(req)
        .then((cart) => res.json(cart))
        .catch(next)
}
exports.updateCartItem = (req, res, next) => {
    cartService
        .updateCartItem(req)
        .then((cart) => res.json({message: "item updated"}))
        .catch(next)
}