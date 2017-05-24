User.destroy_all

user1 = User.create(name: "Bill", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Sydney", image: "imageOfBill")
user2 = User.create(name: "Hash", email: "hash@hash.com", password: "hash", password_confirmation: "hash", location: "Melbourne", image: "imageOfHash")
user3 = User.create(name: "Rocket", email: "rocket@rocket.com", password: "rocket", password_confirmation: "rocket", location: "Canberra", image: "imageOfUser3")
user4 = User.create(name: "Sam", email: "sam@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Tokyo", image: "imageOfUser4")
user5 = User.create(name: "Matt", email: "matt@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra", image: "imageOfUser5")
user6 = User.create(name: "Zayrah", email: "zay@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra", image: "imageOfUser6")
user7 = User.create(name: "Kez", email: "kez@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra", image: "imageOfUser7")
user8 = User.create(name: "Angelique", email: "rocket@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra", image: "imageOfUser8")
user9 = User.create(name: "Angel", email: "rocket@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra", image: "imageOfUser9")
user10 = User.create(name: "Emily", email: "rocket@rocket.com", password:"rocket", password_confirmation: "rocket", location: "Canberra", image: "imageOfUser10")

p "Users: #{ User.count }"

Pet.destroy_all

pet1 = Pet.create(name: "Bin", date_of_birth: 5, type_of_pet: "Dog", gender: "Male", description: "Brown in colour", image: "http://www.info-psi.estranky.cz/img/picture/30/77256-270px-clyde_the_bulldog.jpg", user_id: user1.id )
pet2 = Pet.create(name: "Smudge", date_of_birth: 5, type_of_pet: "Cat", gender: "Female", description: "White in colour", image: "imageOfCat", user_id: user2.id )
pet3 = Pet.create(name: "Box", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user3.id )
pet4 = Pet.create(name: "Groucho", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user4.id )
pet5 = Pet.create(name: "Zeppo", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user5.id )
pet6 = Pet.create(name: "Barto", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user6.id )
pet7 = Pet.create(name: "Marko", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user7.id )
pet8 = Pet.create(name: "Hello", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user8.id )
pet9 = Pet.create(name: "Box", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user9.id )
pet10 = Pet.create(name: "Box", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "imageOfDog", user_id: user10.id )

p " Pets: #{ Pet.count } "

Service.destroy_all

service1 = Service.create(name: "Home Care", description: "All care done at home", price: 24)
service2 = Service.create(name: "Pet sitter", description: "Taking care at owns house", price: 57)
service3 = Service.create(name: "Walk", description: "Park walk", price: 42)
service4 = Service.create(name: "Clean", description: "Park walk", price: 42)
service5 = Service.create(name: "Walk", description: "Park walk", price: 42)
service6 = Service.create(name: "Walk", description: "Park walk", price: 42)
service7 = Service.create(name: "Walk", description: "Park walk", price: 42)
service8 = Service.create(name: "Walk", description: "Park walk", price: 42)
service9 = Service.create(name: "Walk", description: "Park walk", price: 42)
service10 = Service.create(name: "Walk", description: "Park walk", price: 42)

p "Services: #{ Service.count }"

Booking.destroy_all

booking1 = Booking.create(start_time: "12", end_time: "23", service_id: service1.id, owner_id: user1.id, sitter_id: user6.id )
booking1 = Booking.create(start_time: "12", end_time: "23", service_id: service2.id, owner_id: user2.id, sitter_id: user7.id )
booking1 = Booking.create(start_time: "12", end_time: "23", service_id: service3.id, owner_id: user3.id, sitter_id: user8.id )
booking1 = Booking.create(start_time: "12", end_time: "23", service_id: service4.id, owner_id: user4.id, sitter_id: user9.id )
booking1 = Booking.create(start_time: "12", end_time: "23", service_id: service5.id, owner_id: user5.id, sitter_id: user10.id )


p "Bookings: #{Booking.count}"

# t.datetime :start_time
# t.datetime :end_time
# t.integer :service_id
# t.integer :owner_id
# t.integer :sitter_id
