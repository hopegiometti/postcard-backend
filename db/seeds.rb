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

#response seeds
resOne = Response.create(body: "This is g-g-great!", postcard: postOne, user: bot)