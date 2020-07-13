# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Postcard.destroy_all
Response.destroy_all

#user seeds
hope = User.create(username: "HopeThePope", email: "hopegiometti@gmail.com")
bot = User.create(username: "IAmABot", email: "immabot@gmail.org")

#postcard seeds
postOne = Postcard.create(message: "hello world", photo: "https://www.marylmartin.com/wp-content/uploads/2017/06/0000597158-1.jpg", user: hope)
postTwo = Postcard.create(message: "this is the second postcard", photo: "https://images.squarespace-cdn.com/content/v1/53725fd2e4b0f6c6b67fb1fb/1412979215047-5NBE32O9WXLKQD10WNA5/ke17ZwdGBToddI8pDm48kElFfrMdeCrej--maRuyYEZZw-zPPgdn4jUwVcJE1ZvWEtT5uBSRWt4vQZAgTJucoTqqXjS3CfNDSuuf31e0tVGTonBSAZAJXY0XMw6WW0Kzs7h5cVw5VqBhgHzIPhsO3CsuwZHgRYe0lhdhh0rC03U/NYC+Postcard.jpg", user: bot)
postThree = Postcard.create(message: "write back to me plz", photo: "https://i1.wp.com/www.ouritalianromance.com/wp-content/uploads/2019/05/postcard-4.jpg?w=768&ssl=1", user: hope)
postFour = Postcard.create(message: "I have a secret to tell you", photo: "https://www.marylmartin.com/wp-content/uploads/2017/08/0000611508-1.jpg", user: hope)
postFive = Postcard.create(message: "what's up dude", photo: "https://cdn.shopify.com/s/files/1/0895/0864/products/42-20733643_1024x1024.jpeg?v=1450886993", user: bot)

#response seeds
resOne = Response.create(body: "This is g-g-great!", postcard: postOne, user: bot)
resTwo = Response.create(body: "What's your secret???", postcard: postFour, user: hope)
