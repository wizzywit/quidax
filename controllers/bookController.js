const Joi = require('joi')
const validateRequest = require('../_middleware/validate-request')
const bookService = require('../services/bookService')
const getPagination = require('../_helpers/getPagination')



exports.createSchema = (req, res, next) => {
    const schema = Joi.object({
        title: Joi.string().required(),
        description: Joi.string().required(),
        imagePath: Joi.string().required(),
        genreName: Joi.string().required(),
        price: Joi.number().required(),
        copies: Joi.number().required(),
        publisher: Joi.string().required(),
        releasedDate: Joi.date().raw().required(),
        featured: Joi.bool().optional(),
        tags: Joi.array().items(Joi.string()).required(),
        authors: Joi.array().items(Joi.string()).required(),
    })
    validateRequest(req, next, schema)
}
exports.rateSchema = (req, res, next) => {
    const schema = Joi.object({
        rate: Joi.number().required().min(0).max(5),
    })
    validateRequest(req, next, schema)
}

exports.create = (req, res, next) => {
    bookService
        .create(req.body)
        .then((book) => res.json({ message: 'Book created successfully', data: book }))
        .catch(next)
}
exports.getAllBooks = (req, res, next) => {
    const { page, size, search } = req.query
    const { limit, offset } = getPagination(page, size)
    bookService
        .getAllBooks(limit, offset, null, search)
        .then((data) => res.json(getPagingData(data, page, limit)))
        .catch(next)
}
exports.getFeaturedBooks = (req, res, next) => {
    const { page, size } = req.query
    const { limit, offset } = getPagination(page, size)
    bookService
        .getAllBooks(limit, offset, {featured: true})
        .then((data) => res.json(getPagingData(data, page, limit)))
        .catch(next)
}
exports.getBook = (req, res, next) => {
    bookService
        .getBook(req.params.id)
        .then((book) => res.json(book))
        .catch(next)
}
exports.rate = (req, res, next) => {
    bookService
        .rate(req)
        .then(() => res.json({message: "Rating submitted"}))
        .catch(next)
}
exports.like = (req, res, next) => {
    bookService
        .like(req)
        .then(() => res.json({message: "liked"}))
        .catch(next)
}
exports.unlike = (req, res, next) => {
    bookService
        .unlike(req)
        .then(() => res.json({message: "unliked"}))
        .catch(next)
}
const getPagingData = (data, page, limit) => {
    const { count: total_items, rows } = data
    const current_page = page ? +page : 0
    const total_pages = Math.ceil(total_items / limit)

    return { total_items, data: rows, total_pages, current_page }
}