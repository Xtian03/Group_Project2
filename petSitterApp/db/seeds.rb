

User.destroy_all

user1 = User.create(name: "Bill", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Sydney", image: "http://www.fillmurray.com/300/300")
user2 = User.create(name: "Nick", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Melbourne", image: "http://www.fillmurray.com/300/300")
user3 = User.create(name: "Zeppo", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Canberra", image: "http://www.fillmurray.com/300/300")
user4 = User.create(name: "Groucho", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Adelaide", image: "http://www.fillmurray.com/300/300")
user5 = User.create(name: "Harpo", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Perth", image: "http://www.fillmurray.com/300/300")
user6 = User.create(name: "Gummo", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Sydney", image: "http://www.fillmurray.com/300/300")
user7 = User.create(name: "Tramble", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Sydney", image: "http://www.fillmurray.com/300/300")
user8 = User.create(name: "Eustolia", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Canberra", image: "http://www.fillmurray.com/300/300")
user9 = User.create(name: "Carrales", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Sydney", image: "http://www.fillmurray.com/300/300")
user10 = User.create(name: "Tramble", email: "bill@bill.com", password: "chicken", password_confirmation: "chicken", location: "Sydney", image: "http://www.fillmurray.com/300/300")

p "Users: #{ User.count }"




Pet.destroy_all

pet1 = Pet.create(name: "Bin", date_of_birth: 5, type_of_pet: "Dog", gender: "Male", description: "Brown in colour", image: "http://www.info-psi.estranky.cz/img/picture/30/77256-270px-clyde_the_bulldog.jpg", user_id: user1.id )

pet2 = Pet.create(name: "Smudge", date_of_birth: 5, type_of_pet: "Cat", gender: "Female", description: "Cool", image: "http://loremflickr.com/320/240?random=1", user_id: user2.id )
pet3 = Pet.create(name: "Smudge", date_of_birth: 5, type_of_pet: "Cat", gender: "Female", description: "White in colour", image: "http://loremflickr.com/320/240?random=1", user_id: user3.id )
pet4 = Pet.create(name: "Smudge", date_of_birth: 5, type_of_pet: "Cat", gender: "Female", description: "White in colour", image: "http://loremflickr.com/320/240?random=1", user_id: user4.id )
pet5 = Pet.create(name: "Smudge", date_of_birth: 5, type_of_pet: "Cat", gender: "Female", description: "White in colour", image: "http://loremflickr.com/320/240?random=1", user_id: user5.id )
pet6 = Pet.create(name: "Box", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Brown in colour", image: "http://loremflickr.com/320/240/dog", user_id: user6.id )
pet7 = Pet.create(name: "Greb", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "http://loremflickr.com/320/240/dog", user_id: user7.id )
pet8 = Pet.create(name: "Wat", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "http://loremflickr.com/320/240/dog", user_id: user8.id )
pet9 = Pet.create(name: "Bro", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "http://loremflickr.com/320/240/dog", user_id: user9.id )
pet10 = Pet.create(name: "Fox", date_of_birth: 15, type_of_pet: "Dog", gender: "Male", description: "Ghostwhite in colour", image: "http://loremflickr.com/320/240/dog", user_id: user10.id )

p " Pets: #{ Pet.count } "


Service.destroy_all

service1 = Service.create(name: "Home Care", description: "All care done at home", price: 24)



#Bookings.destroy_all

#booking1 = Booking.create(start_time: "4", end_time: "7", service_id: service1.id,)


# t.datetime :start_time
# t.datetime :end_time
# t.integer :service_id
# t.integer :owner_id
# t.integer :sitter_id

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

booking1 = Booking.create(available: false, start_time: "12", end_time: "23", service_id: service1.id, owner_id: user1.id, sitter_id: user6.id )
booking1 = Booking.create(available: false, start_time: "12", end_time: "23", service_id: service2.id, owner_id: user2.id, sitter_id: user7.id )
booking1 = Booking.create(available: false, start_time: "12", end_time: "23", service_id: service3.id, owner_id: user3.id, sitter_id: user8.id )
booking1 = Booking.create(available: false, start_time: "12", end_time: "23", service_id: service4.id, owner_id: user4.id, sitter_id: user9.id )
booking1 = Booking.create(available: false, start_time: "12", end_time: "23", service_id: service5.id, owner_id: user5.id, sitter_id: user10.id )

a_booking1 = Booking.create(start_time: Time.now + 2.days, end_time: Time.now + 3.days, service_id: service1.id, sitter_id: user6.id)
a_booking2 = Booking.create(start_time: Time.now + 2.days, end_time: Time.now + 3.days, service_id: service2.id, sitter_id: user7.id)
a_booking3 = Booking.create(start_time: Time.now + 2.days, end_time: Time.now + 3.days, service_id: service3.id, sitter_id: user8.id)
a_booking4 = Booking.create(start_time: Time.now + 2.days, end_time: Time.now + 3.days, service_id: service4.id, sitter_id: user9.id)
a_booking5 = Booking.create(start_time: Time.now + 2.days, end_time: Time.now + 3.days, service_id: service5.id, sitter_id: user10.id)

p "Bookings: #{Booking.count}"

