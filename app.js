require('rootpath')()
const http = require('http')
const express = require('express')
const app = express()
const cors = require('cors')
const errorHandler = require('./_middleware/error-handler')
const apicache = require('apicache');
let cache = apicache.middleware;
require('dotenv').config({path: __dirname + '/.env'})

const server = http.createServer(app)

// setting caching headers for only get request
let setCache = function (req, res, next) {
    // defining period in second, this one is 5 minutes
    const period = 60 * 5

    // cache for only GET requests
    if (req.method === 'GET') {
        res.set('Cache-control', `public, max-age=${period}`)
    } else {
        // for the other requests set strict no caching parameters
        res.set('Cache-control', `no-store`)
    }

    // continue
    next()
}
// app.use(setCache)
// app.use(cache('5 minutes'));
app.use('/files', express.static("files"));
app.use(express.urlencoded({ extended: false }))
app.use(express.json())
app.use(cors())

const routes = require('./routes')
// api routes
app.use('/api/v1', routes)

// global error handler
app.use(errorHandler)

// start server
const port =
  process.env.NODE_ENV === 'production' ? process.env.PORT || 80 : 4000
const serve = server.listen(port, () => console.log('Server listening on port ' + port))

module.exports = serve
