# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.create(name: "Bill", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Hollywood", image: "imageOfBill")


# t.string   "name"
# t.string   "email"
# t.text     "password_digest"
# t.string   "location"
# t.text     "image"
