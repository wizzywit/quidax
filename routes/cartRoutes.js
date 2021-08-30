const express = require('express')
const router = express.Router()
const cartController = require('../controllers/cartController')
const authorize = require('../_middleware/authorize')

const {
   addToCart,
   cartSchema,
   getCart,
   updateCartItem,
   itemSchema
} = cartController

router.post('/cart', authorize(), cartSchema, addToCart)
router.get('/cart', authorize(), getCart)
router.put('/cart/book/:id', authorize(), itemSchema, updateCartItem)

module.exports = router