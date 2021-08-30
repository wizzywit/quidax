# QUIDAX ASSESSMENT
Design and develop a simple REST (convertible to graphQL on a special route) service to power the different
features on screens - Home/Index, Details, Cart and Search of this UI [Prototype](https://www.figma.com/proto/YsQGHb7O8LsXIxsyHT1hZY/Quidax-Front-end-Engineer-Challenge?node-id=8255%3A0&viewport=2922%2C676%2C0.9457842707633972&scaling=min-zoom).
This is the source code for the assessment.

- **Language:** Javascript/NodeJS
- **Main libraries:** [node](https://www.npmjs.com/package/handlebars), [express](https://www.npmjs.com/package/express), [sequelize](https://www.npmjs.com/package/sequelize), [sequelize-cli](https://www.npmjs.com/package/sequelize-cli), [pg](https://www.npmjs.com/package/pg), [jest](https://www.npmjs.com/package/jest)
- **Database:** PostgreSQL

## Running

- **External dependencies**
    - Install PostgreSQL for development.
- **Installation**
    - Install node v14 and yarn (`npm i -g yarn`)
    - Install dependencies using `yarn`
- **Configuration**
    - Copy `.env.example` to `.env` and fill it in with appropriate information
- **Running**
    - **In development only:**
        - Use `npx sequelize-cli db:migrate` to run migration file and create all tables in the database.
        - For the first time run SQL file located at root/seeders/db_seeders.sql on your Postgres database,
          To seed dummy data and ALTER tables for search functionality.
        - Use `yarn test` to run test.
        - Serve the application using `yarn start`.
        - both test and start use the same port so one should run at a time.
        - To run test, make sure server is not running. else shut down and run `yarn test`
        - server runs at https://localhost:4000 by default. register on the system using https://localhost:4000/api/v1/register on curl or postman
        - Endpoints located at the routes' folder.

## Assumptions
- I assumed that for this service to be secured we needed an authentication system which I implemented along with.

## Incomplete requirements
- Test on all features (endpoints)

## Issues
- none

## Feedback
- For real time implementation of the likes and ratings I would have made use of a service like pusher to integrate into the application if there was more the time.
- Replacing the implemented 'full-text' search with 'Elastic' search for the search feature to improve performance and speed of execution (Although this is also optimal to an extent).

## Database Schema / Class Diagram
- ### User
    - **Relationships**
        - hasOne: Cart
    - **Attributes/Datatypes**
        - accUUID/UUID: PK, Auto Increment
        - emailVerified/bool: default:false
        - uniqueString/text: notNull, for email verification
        - email/string: notNull,
        - password/string: notNull,
        - role/enum: default:user
    
- ### Genre
    - **Relationships**
        - hasMany: Books
    - **Attributes/Datatypes**
        - genreName/string: notNull
    
- ### Book
    - **Relationships**
        - hasMany: Likes
        - hasMany: Ratings
        - belongsTo: Genre
        - belongsToMany: Tags
        - belongsToMany: Authors
    - **Attributes/Datatypes**
        - title/string
        - genreId/reference
        - description/text
        - imagePath/string
        - price/double
        - copies/integer
        - publisher/string
        - featured/boolean
        - releasedDate/date

- ### Tag
    - **Relationships**
        - belongsToMany: Books
    - **Attributes/Datatypes**
        - tagName/string: notNull

- ### BookTag (Join Table)
    - **Attributes/Datatypes**
        - bookId/reference: notNull
        - tagId/reference: notNull

- ### Rating
    - **Relationships**
        - belongsTo: User
        - belongsTo: Book
    - **Attributes/Datatypes**
        - rating/double: notNull (0 - 5)
        - userId/reference
        - bookId/reference
    
- ### Like
    - **Relationships**
        - belongsTo: User
        - belongsTo: Book
    - **Attributes/Datatypes**
        - userId/reference
        - bookId/reference

- ### Author
    - **Relationships**
        - belongsToMany: Books
    - **Attributes/Datatypes**
        - name/string: notNull

- ### BookAuthor (Join Table)
    - **Attributes/Datatypes**
        - bookId/reference: notNull
        - authorId/reference: notNull

- ### Cart
    - **Relationships**
        - belongsTo: User
        - hasMany: Item
    - **Attributes/Datatypes**
        - subTotal/double: default:0

- ### Item
    - **Relationships**
        - belongsTo: Cart
        - belongsTo: Book
    - **Attributes/Datatypes**
        - quantity/integer