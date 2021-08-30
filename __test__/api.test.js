const supertest = require('supertest');
const app = require('../app');
const db = require('../models')

describe("Testing the book API", () => {
    it("accessing secured routes without authenticating", async () => {
        const response = await supertest(app).get('/api/v1/books');
        expect(response.status).toBe(401);
        app.close()

    }, 2000);

    it("should register user, login then access books route", async () => {
        const response = await supertest(app).post('/api/v1/register').send({
            "email": "test@gmail.com",
            "password": "password"
        })
        expect(response.status).toBe(200)
        expect(response.body.message).toBe("Registration successful")

        const login = await supertest(app).post('/api/v1/login').send({
            "email": "test@gmail.com",
            "password": "password"
        })

        expect(login.status).toBe(200)
        const token = login.body.token
        expect(token).toBeDefined()
        expect(login.body.password).toBeUndefined()

        const books = await supertest(app).get('/api/v1/books').set('Authorization', 'Bearer ' + token)
        expect(books.status).toBe(200)

        expect(books.body.total_items).toBeDefined()
        expect(books.body.data).toBeDefined()
        expect(books.body.total_pages).toBeDefined()
        expect(books.body.current_page).toBeDefined()
        app.close()
    }, 2000)

});

describe("Authenticated routes test", () => {
    let auth = {};
    beforeAll(loginUser(auth));
    it('POST add new book', async () => {
        const response = await supertest(app).post('/api/v1/books').set('Authorization', 'Bearer ' + auth.token).send({
            "title": "Inputting value for test only - will be deleted immediately",
            "description": "Some description",
            "imagePath": "http://localhost:4000/files/ssdfs-of-all-tther.jpg",
            "genreName": "Motivational",
            "price": 49.99,
            "copies": 30,
            "publisher": "Savanna",
            "featured": false,
            "releasedDate": "2020-01-25",
            "tags": ["Creativity", "Better Living"],
            "authors": ["Jim Collins", "Jerry I. Porras"]
        })
        expect(response.status).toBe(200)
        expect(response.body.message).toBe("Book created successfully")
        expect(response.body.data).toBeDefined()
        app.close()
    }, 2000);

    it('should GET featured books', async () => {
      const response = await supertest(app).get('/api/v1/books/featured').set('Authorization', 'Bearer ' + auth.token)
        expect(response.status).toBe(200)

        expect(response.body.total_items).toBeDefined()
        expect(response.body.data).toBeDefined()
        expect(response.body.total_pages).toBeDefined()
        expect(response.body.current_page).toBeDefined()
        app.close()
    }, 2000)

    it('should GET single book', async () => {
        const response = await supertest(app).get('/api/v1/books/2').set('Authorization', 'Bearer ' + auth.token)
        expect(response.status).toBe(200)

        expect(response.body.id).toBe(2)
        expect(response.body.title).toBeDefined()
        expect(response.body.likeCount).toBeDefined()
        expect(response.body.rating).toBeGreaterThanOrEqual(0)
        expect(response.body.Genre).toBeDefined()
        app.close()
    }, 2000)

    afterAll(async () => {
        const book = await db.Book.findOne({where: {title: "Inputting value for test only - will be deleted immediately"}})
        const testUser = await db.User.findOne({where: {email: "test@gmail.com"}})

        await book.destroy()
        await testUser.destroy()
    })
})

function loginUser(auth) {
    return function(done) {
        supertest(app)
            .post('/api/v1/login')
            .send({
                "email": "test@gmail.com",
                "password": "password"
            })
            .expect(200)
            .end(onResponse);

        function onResponse(err, res) {
            auth.token = res.body.token;
            return done();
        }
    };
}
