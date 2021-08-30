const db = require('../models')
const { map  } = require('lodash')

module.exports = {
    create,
    getAllBooks,
    getBook,
    rate,
    like,
    unlike
}

/**
 *
 * @param limit
 * @param offset
 * @param where
 * @returns {Promise<{count: *, rows: Model[]}>}
 */
async function getAllBooks(limit, offset, where, search) {
    let count;
    let rows
    if(search){
        let query = `SELECT "Book"."id", "Book"."title", "Book"."genreId", "Book"."description", "Book"."imagePath", "Book"."price", "Book"."copies", "Book"."publisher", "Book"."featured", "Book"."releasedDate", "Book"."createdAt", "Book"."updatedAt", "Tags"."id" AS "Tags.id", "Tags"."tagName" AS "Tags.tagName", "Tags"."createdAt" AS "Tags.createdAt", "Tags"."updatedAt" AS "Tags.updatedAt", "Tags->BookTags"."createdAt" AS "Tags.BookTags.createdAt", "Tags->BookTags"."updatedAt" AS "Tags.BookTags.updatedAt", "Tags->BookTags"."bookId" AS "Tags.BookTags.bookId", "Tags->BookTags"."tagId" AS "Tags.BookTags.tagId", "Genre"."id" AS "Genre.id", "Genre"."genreName" AS "Genre.genreName", "Genre"."createdAt" AS "Genre.createdAt", "Genre"."updatedAt" AS "Genre.updatedAt", "Authors"."id" AS "Authors.id", "Authors"."name" AS "Authors.name", "Authors"."createdAt" AS "Authors.createdAt", "Authors"."updatedAt" AS "Authors.updatedAt", "Authors->BookAuthors"."createdAt" AS "Authors.BookAuthors.createdAt", "Authors->BookAuthors"."updatedAt" AS "Authors.BookAuthors.updatedAt", "Authors->BookAuthors"."authorId" AS "Authors.BookAuthors.authorId", "Authors->BookAuthors"."bookId" AS "Authors.BookAuthors.bookId" FROM "Books" AS "Book" LEFT OUTER JOIN ( "BookTags" AS "Tags->BookTags" INNER JOIN "Tags" AS "Tags" ON "Tags"."id" = "Tags->BookTags"."tagId") ON "Book"."id" = "Tags->BookTags"."bookId" LEFT OUTER JOIN "Genres" AS "Genre" ON "Book"."genreId" = "Genre"."id" LEFT OUTER JOIN ( "BookAuthors" AS "Authors->BookAuthors" INNER JOIN "Authors" AS "Authors" ON "Authors"."id" = "Authors->BookAuthors"."authorId") ON "Book"."id" = "Authors->BookAuthors"."bookId" WHERE "Book"."_search" @@ plainto_tsquery('english', :query) OR "Authors"."_search" @@ plainto_tsquery('english', :query) OR "Genre"."_search" @@ plainto_tsquery('english', :query) OR "Tags"."_search" @@ plainto_tsquery('english', :query);`
        const results = await db.sequelize.query(`${query}`, {
            model: db.Book,
            replacements: { query: search },
        });

        count = await db.Book.count({
            where: {
                id: {
                    [db.Sequelize.Op.in]: map(results, 'id')
                }
            }
        })
        rows = await db.Book.findAll({
            limit,
            offset,
            where: {
                id: {
                    [db.Sequelize.Op.in]: map(results, 'id')
                }
            },
            attributes: {
                exclude: ['description', 'publisher'],
                include: [
                    [
                        db.sequelize.literal(`(
                    SELECT COUNT(*)
                    FROM "Likes" AS "Like"
                    WHERE "Like"."bookId" = "Book"."id"
                    )`),
                        'likeCount'
                    ], [
                        db.sequelize.literal(`(
                    SELECT CASE WHEN AVG("Rating"."rating") IS NULL THEN '0' ELSE AVG("Rating"."rating") END
                    FROM "Ratings" AS "Rating"
                    WHERE "Rating"."bookId" = "Book"."id"
                    )`),
                        'rating'
                    ]
                ]
            },
            order: [['id', 'DESC']],
        })

    } else {
        count = await db.Book.count({where})
        rows = await db.Book.findAll({
            limit,
            offset,
            where,
            attributes: {
                exclude: ['description', 'publisher'],
                include: [
                    [
                        db.sequelize.literal(`(
                    SELECT COUNT(*)
                    FROM "Likes" AS "Like"
                    WHERE "Like"."bookId" = "Book"."id"
                    )`),
                        'likeCount'
                    ],[
                        db.sequelize.literal(`(
                    SELECT CASE WHEN AVG("Rating"."rating") IS NULL THEN '0' ELSE AVG("Rating"."rating") END
                    FROM "Ratings" AS "Rating"
                    WHERE "Rating"."bookId" = "Book"."id"
                    )`),
                        'rating'
                    ]
                ]
            },
            order: [['id', 'DESC']],
        })
    }

    return {count, rows}
}

/**
 *
 * @param id
 * @returns {Promise<*>}
 */
async function getBook (id) {
    const book = await db.Book.findOne({
        where: {id},
        attributes: {
            include: [
                [
                    db.sequelize.literal(`(
                    SELECT COUNT(*)
                    FROM "Likes" AS "Like"
                    WHERE "Like"."bookId" = "Book"."id"
                    )`),
                    'likeCount'
                ],[
                    db.sequelize.literal(`(
                    SELECT CASE WHEN AVG("Rating"."rating") IS NULL THEN '0' ELSE AVG("Rating"."rating") END
                    FROM "Ratings" AS "Rating"
                    WHERE "Rating"."bookId" = "Book"."id"
                    )`),
                    'rating'
                ]
            ]
        },
        include: [db.Tag, db.Genre, db.Author]
    })
    if (!book) throw 'Book not found'
    return book
}

/**
 *
 * @param params
 * @returns {Promise<*>}
 */
async function create(params) {
    const tags = []
    for (let i in params.tags) {
        console.log("tag loop: ",params.tags[i])
        let tag = await db.Tag.create({
            tagName: params.tags[i]
        })
        tags.push(tag)
    }

    const authors = []
    for (let i in params.authors) {
        let author = await db.Author.create({
            name: params.authors[i]
        })
        authors.push(author)
    }

    let releasedDate = new Date(params.releasedDate)
    const book = await db.Book.create({
        title: params.title,
        description: params.description,
        imagePath: params.imagePath,
        price: params.price,
        copies: params.copies,
        publisher: params.publisher,
        releasedDate: releasedDate,
        featured: params.featured
    })

    const genre = await db.Genre.create({
        genreName: params.genreName
    })
    await genre.addBooks([book])
    await book.setAuthors([...authors])
    await book.setTags([...tags])

    return book

}

/**
 *
 * @param req
 * @returns {Promise<void>}
 */
async function rate(req) {
    const book = await db.Book.findByPk(req.params.id)
    const user = await db.User.findByPk(req.user.accUUID)
    if(!book) throw 'Cannot rate unavailable book'

    let rate = await db.Rating.findOne({where: { bookId: book.id, userId: req.user.accUUID }})
    if(rate){
        rate.rating = req.body.rate
        await rate.save()
        return
    }

    rate = await db.Rating.create({
        rating: req.body.rate
    })

    await rate.setBook(book)
    await rate.setUser(user)
}

/**
 *
 * @param req
 * @returns {Promise<void>}
 */
async function like(req) {
    const book = await db.Book.findByPk(req.params.id)
    const user = await db.User.findByPk(req.user.accUUID)
    if(!book) throw 'Cannot like unavailable book'

    let like = await db.Like.findOne({where: { bookId: book.id, userId: req.user.accUUID }})
    if(like){
        return
    }

    like = await db.Like.create()

    await like.setBook(book)
    await like.setUser(user)
}

/**
 *
 * @param req
 * @returns {Promise<void>}
 */
async function unlike(req) {
    const book = await db.Book.findByPk(req.params.id)
    if(!book) throw 'Cannot unlike unavailable book'

    await db.Like.destroy({where: { bookId: book.id, userId: req.user.accUUID }})
}