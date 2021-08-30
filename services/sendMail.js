const nodemailer = require('nodemailer')

const sendMail = (email, uniqueString) => {
    let Transport = nodemailer.createTransport({
        service: process.env['MAIL_SERVICE'],
        auth: {
            user: process.env['MAIL_USER'],
            pass: process.env['MAIL_PASSWORD']
        }
    })

    let sender = "Frontstep"
    let mailOptions = {
        from: sender,
        to: email,
        subject: 'Frontstep: Email Verification',
        html: `Click <a href=http://localhost:4000/api/v1/verify?token=${uniqueString}>here</a> to verify your email. thanks`
    }

    Transport.sendMail(mailOptions, (error, response) => {
        if(error) {
            console.log(error)
        }else {
            console.log("message sent")
        }
    })
}

module.exports = sendMail