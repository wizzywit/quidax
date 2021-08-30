const db = require('../models')

module.exports = {
    addToCart,
    getCart,
    updateCartItem
}

async function addToCart(req) {
    const {bookId} = req.body
    const quantity = Number.parseInt(req.body.quantity)
    const user = await db.User.findByPk(req.user.accUUID)

    const cart = await user.getCart()
    const book = await db.Book.findByPk(bookId)
    if(!book) throw 'Book not found'

    // books with zero copies are not added to cart
    if(book.copies === 0) throw 'Book out of stock'

    // if cart exist add to cart
    if(cart) {
        const cartWithModel = await db.Cart.findOne({
            where: {id: cart.id},
            include: [
                {model: db.Item}
            ]
        })
        // check if item already exist
        const cartItems =  await cart.getItems()
        const indexFound = cartItems.findIndex(item => item.bookId === bookId)

        //------This removes an item from the the cart if the quantity is set to zero  -------
        if(indexFound !== -1 && quantity <= 0){
            cartItems.splice(indexFound, 1)
            await cartWithModel.Items[indexFound].destroy();
            if(cartItems.length === 0){
                cart.subTotal = 0
            } else {
                cart.subTotal = cartItems.map((items) => items.total).reduce((acc, next) => acc + next)
            }
        }

        //----------Check if book exist, just add the previous quantity with the new quantity and update the total price-------
        else if(indexFound !== -1){
            cartWithModel.Items[indexFound].quantity = cartItems[indexFound].quantity + quantity;
            cartWithModel.Items[indexFound].total = cartItems[indexFound].quantity * book.price;
            cartWithModel.Items[indexFound].price = book.price
            cartWithModel.Items[indexFound].save()
            cart.subTotal = cartWithModel.Items.map(item => item.total).reduce((acc, next) => acc + next);
        }

        //----Check if quantity is greater than 0 then add item to items array ----
        else if (quantity > 0) {
            const total = parseFloat(book.price) * quantity
            const item = await db.Item.create({
                bookId: bookId,
                quantity: quantity,
                price: book.price,
                total
            })
            await cart.addItem(item)
            const newCartItems = await cart.getItems()
            cart.subTotal = newCartItems.map(item => item.total).reduce((acc, next) => acc + next);
        }

        //----If quantity of price is 0 throw the error -------
        else throw 'Invalid request'

        //return cart
        return await cart.save();

    }

    //------------ This creates a new cart and then adds the item to the cart that has been created------------
    else {
        const total = parseFloat(book.price) * quantity
        const cartData = {
            Items: [{
                bookId: bookId,
                quantity: quantity,
                total,
                price: book.price
            }],
            subTotal: total
        }
        const cart = await db.Cart.create(cartData, {
            include: [{
                model: db.Item,
            }]
        })
        await user.setCart(cart)
        return cart

    }
}

async function getCart(req) {

    // find find cart including the items
    const cart = await db.Cart.findOne({
        where: {userId: req.user.accUUID},
        include: [db.Item]
    })

    // if cart hasn't been created return empty items.
    if(!cart) {
        return {
            subTotal: 0,
            Items: []
        }
    }

    return cart
}

async function updateCartItem(req) {

    // find cart including the items
    const cartItems = await db.Cart.findOne({
        where: {userId: req.user.accUUID},
        include: [
            {
                model: db.Item,
            }
        ]
    })

    // prevent from accessing items that does not belong to the current logged in user
    if(!cartItems) throw 'Invalid operation: cart is empty'

    // find the index of the book item
    const indexFound = cartItems.Items.findIndex(item => item.id === Number.parseInt(req.params.id))

    //------Remove a book from the the cart if the quantity is set to zero and update the total price
    if(indexFound !== -1 && req.body.quantity <= 0){
        await cartItems.Items[indexFound].destroy();
        const newItems = cartItems.Items.filter((item, ind) => ind !== indexFound)
        if(newItems.length === 0){
            cartItems.subTotal = 0
        } else {
            cartItems.subTotal = newItems.map((items) => items.total).reduce((acc, next) => acc + next)
        }
        await cartItems.save()
        return {}
    }

    //----------Check if book exist in cart, just add the previous quantity with the new quantity and update the total price-------
    else if(indexFound !== -1) {
        console.log("......",cartItems.Items[indexFound])
        cartItems.Items[indexFound].quantity = Number.parseInt(req.body.quantity);
        cartItems.Items[indexFound].total = Number.parseInt(req.body.quantity) * cartItems.Items[indexFound].price;
        cartItems.Items[indexFound].save()
        cartItems.subTotal = cartItems.Items.map(item => item.total).reduce((acc, next) => acc + next);
        return (await cartItems.save()).Items[indexFound]
    } else throw 'Book not in cart'
}