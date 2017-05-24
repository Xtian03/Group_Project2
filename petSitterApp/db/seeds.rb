# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# t.string :name
# t.integer :age
# t.string :type
# t.string :gender
# t.text :description
# t.text :image
# t.integer :user_id

User.destroy_all

user1 = User.create(name: "Bill", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Sydney", image: "imageOfBill")
user2 = User.create(name: "Hash", email: "hash@hash.com", password: "hash", password_confirmation: "hash", location: "Melbourne", image: "imageOfHash")
user3 = User.create(name: "Rocket", email: "rocket@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra")
user4 = User.create(name: "Sam", email: "plight@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Tokyo")
user5 = User.create(name: "Matt", email: "rocket@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra")
user6 = User.create(name: "Zayrah", email: "rocket@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra")
user7 = User.create(name: "Kez", email: "rocket@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra")
user8 = User.create(name: "Angelique", email: "rocket@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra")
user9 = User.create(name: "Angel", email: "rocket@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra")
user10 = User.create(name: "Emily", email: "rocket@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra")

Pet.destroy_all

pet1 = Pet.create(name: "Bin", date_of_birth: 5, type_of_pet: "Dog", gender: "Male", description: "Brown in colour", image: "http://www.info-psi.estranky.cz/img/picture/30/77256-270px-clyde_the_bulldog.jpg", user_id: user1.id )
pet2 = Pet.create(name: "Smudge", date_of_birth: 5, type_of_pet: "Cat", gender: "Female", description: "White in colour", image: "imageOfCat", user_id: user2.id )
pet3 = Pet.create(name: "Box", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user3.id )
pet4 = Pet.create(name: "Groucho", date_of_birth: 15, type_of_pet: "Cat", gender: "Male", description: "Grey in colour", image: "imageOfCat", user_id: user3.id )
pet5 = Pet.create(name: "Zeppo", date_of_birth: 15, type_of_pet: "Dog", gender: "Female", description: "Blue in colour", image: "imageOfDog", user_id: user3.id )
pet6 = Pet.create(name: "Barto", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Blue in colour", image: "imageOfDog", user_id: user3.id )
pet7 = Pet.create(name: "Marko", date_of_birth: 15, type_of_pet: "Cat", gender: "Female", description: "Ghostwhite in colour", image: "imageOfCat", user_id: user3.id )
pet8 = Pet.create(name: "Hello", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user3.id )
pet9 = Pet.create(name: "Box", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user3.id )
pet10 = Pet.create(name: "Box", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user3.id )

Service.destroy_all

service1 = Service.create(name: "Home Care", description: "All care done at home", price: 24)
service2 = Service.create(name: "Pet sitter", description: "Taking care of your pet", price: 57)
service3 = Service.create(name: "Walk", description: "Walk to the park with your pet", price: 42)
service4 = Service.create(name: "Clean", description: "Clean with your pet", price: 30)
service5 = Service.create(name: "Play", description: "Play with your pet", price: 24)
service6 = Service.create(name: "Skateboard", description: "Skate with your pet", price: 100)
service7 = Service.create(name: "Skydive", description: "Sky dive with your pet", price: 300)
service8 = Service.create(name: "Swim", description: "Swim with you pet", price: 50)
service9 = Service.create(name: "Poker", description: "Play poker with your pet", price: 45)
service10 = Service.create(name: "Golf", description: "Play golf with your pet", price: 60)

#Bookings.destroy_all

#booking1 = Booking.create(start_time: "4", end_time: "7", service_id: service1.id,)


# t.datetime :start_time
# t.datetime :end_time
# t.integer :service_id
# t.integer :owner_id
# t.integer :sitter_id
