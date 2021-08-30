const bcrypt = require('bcryptjs')

const randString = async () => {
    const len = 128
    let randStr = ''
    for(let i = 0; i < len; i++){
        const ch = Math.floor((Math.random() * 10) + 1)
        randStr += ch
    }
    return await bcrypt.hash(randStr, 5)
}

module.exports = randString