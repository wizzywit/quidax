const express = require('express')
const router = express.Router()
const bookController = require('../controllers/bookController')
const authorize = require('../_middleware/authorize')

const {
    createSchema,
    create,
    getAllBooks,
    getFeaturedBooks,
    getBook,
    rate,
    rateSchema,
    unlike,
    like
} = bookController
router.post('/books', authorize(), createSchema, create)
router.get('/books', authorize(), getAllBooks)
router.get('/books/featured', authorize(), getFeaturedBooks)
router.get('/books/:id', authorize(), getBook)
router.post('/books/:id/rate', authorize(),rateSchema, rate)
router.post('/books/:id/like', authorize(), like)
router.delete('/books/:id/like', authorize(), unlike)

module.exports = router
