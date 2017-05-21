# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

user1 = User.create(name: "Bill", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Sydney", image: "imageOfBill")
user2 = User.create(name: "Hash", email: "hash@hash.com", password: "hash", password_confirmation: "hash", location: "Melbourne", image: "imageOfHash")
user3 = User.create(name: "Rocket", email: "rocket@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra")
