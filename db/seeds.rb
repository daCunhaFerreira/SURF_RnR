# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#users
Booking.destroy_all
Surfboard.destroy_all
User.destroy_all

user_1 = User.create!(email: "surfer1@example.com", password: "password123")
user_2 = User.create!(email: "surfer2@example.com", password: "password123")
user_3 = User.create!(email: "surfer3@example.com", password: "password123")
user_4 = User.create!(email: "surfer4@example.com", password: "password123")
user_5 = User.create!(email: "surfer5@example.com", password: "password123")
user_6 = User.create!(email: "surfer6@example.com", password: "password123")
user_7 = User.create!(email: "surfer7@example.com", password: "password123")
user_8 = User.create!(email: "surfer8@example.com", password: "password123")
user_9 = User.create!(email: "surfer9@example.com", password: "password123")
user_10 = User.create!(email: "surfer10@example.com", password: "password123")

puts "users created"

# surfboards
surfboard_1 = Surfboard.create!(
  name: "Blue Wave Cruiser",
  address: "R. do Centro Cultural 45, Lisbon, Portugal",
  price: "25",
  details: "7'6'' longboard, perfect for beginners looking for a stable ride.",
  photo: "https://plus.unsplash.com/premium_photo-1676645882020-8387c2c77ef8?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user_1
)
sleep(1)

surfboard_2 = Surfboard.create!(
  name: "Shredder Pro 3000",
  address: "16 Villa Gaudelet, Paris",
  price: "35",
  details: "6' shortboard, designed for advanced surfers looking to carve waves.",
  photo: "https://plus.unsplash.com/premium_photo-1664369474135-dcb902213eaa?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user_2
)
sleep(1)

surfboard_3 = Surfboard.create!(
  name: "The Classic Logger",
  address: "18 Villa Gaudelet, Paris",
  price: "30",
  details: "9' traditional longboard, ideal for noseriding and smooth glides.",
  photo: "https://images.unsplash.com/photo-1528163308254-5852067f0a1e?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user_3
)
sleep(1)

surfboard_4 = Surfboard.create!(
  name: "Green Machine",
  address: "20 Villa Gaudelet, Paris",
  price: "40",
  details: "8' hybrid board, perfect for intermediate surfers, handles well in most conditions.",
  photo: "https://media.istockphoto.com/id/658337444/pt/foto/vintage-surfboards.jpg?s=1024x1024&w=is&k=20&c=AZ5GLiVpXswOkeKC-Xn-DvXquPOt8lxTXKzoDeeh4Sk=",
  user: user_4
)
sleep(1)

surfboard_5 = Surfboard.create!(
  name: "Thunderstrike",
  address: "R. do Centro Cultural 37, Lisbon, Portugal",
  price: "50",
  details: "5'10'' performance shortboard, built for high-speed and sharp turns.",
  photo: "https://media.istockphoto.com/id/656528230/pt/foto/vintage-surfboards.jpg?s=1024x1024&w=is&k=20&c=JtmzUWby689p8IZML3IICY7_hJgL3pJ5FHdIo4UmOYY=",
  user: user_5
)
sleep(1)

surfboard_6 =Surfboard.create!(
  name: "Sunset Dreamer",
  address: "R. do Centro Cultural 33, Lisbon, Portugal",
  price: "20",
  details: "6'8'' funboard, great for catching smaller waves with ease.",
  photo: "https://media.istockphoto.com/id/465032758/pt/foto/vintage-60-prancha-de-surf-isoladas-no-branco.jpg?s=1024x1024&w=is&k=20&c=TeRI2XPbIRbqfUL7u7wkIcZHhVSh0WswU3IdkIO0PYY=",
  user: user_6
)
sleep(1)

surfboard_7 = Surfboard.create!(
  name: "Tropical Glide",
  address: "R. do Centro Cultural 31, Lisbon, Portugal",
  price: "45",
  details: "9'6'' longboard, excellent for classic longboarding style in small waves.",
  photo: "https://media.istockphoto.com/id/464996550/pt/foto/vintage-70-espuma-prancha-de-surf-isoladas-no-branco.jpg?s=1024x1024&w=is&k=20&c=p5VYawIg4Y1dvnqIMqYcbja6tJo84zHH9sX8OvLx5eE=",
  user: user_7
)
sleep(1)

surfboard_8 = Surfboard.create!(
  name: "Stormrider",
  address: "R. do Centro Cultural 29, Lisbon, Portugal",
  price: "55",
  details: "6'2'' shortboard, lightweight and perfect for advanced riders.",
  photo: "https://media.istockphoto.com/id/465032728/pt/foto/vintage-70-espuma-prancha-de-surf-isoladas-no-branco.jpg?s=1024x1024&w=is&k=20&c=G3ETgAakJVtsge30tqBBYSC_Bl8tLEqToX7GIj4qiyE=",
  user: user_8
)
sleep(1)

surfboard_9 = Surfboard.create!(
  name: "Pacific Soul",
  address: "R. do Centro Cultural 25, Lisbon, Portugal",
  price: "60",
  details: "7' fish board, perfect for high-performance in bigger waves.",
  photo: "https://media.istockphoto.com/id/1470159946/pt/foto/white-and-green-longboard.jpg?s=1024x1024&w=is&k=20&c=iRmHN0MkD8YlkqH09702WRECC6dMwtYAZKiLYCE2-uk=",
  user: user_9
)
sleep(1)

surfboard_10 = Surfboard.create!(
  name: "Wave Rider",
  address: "R. do Centro Cultural, Lisbon, Portugal",
  price: "35",
  details: "8' funboard, ideal for both beginners and experienced surfers.",
  photo: "https://media.istockphoto.com/id/1281303246/pt/foto/blank-white-wood-surfboarf-with-fins-mockup-front-and-back.jpg?s=1024x1024&w=is&k=20&c=CJ6Lk-lWQjqm2GtweRw65Ywo4Z1szwpC0c3ULrK_aXI=",
  user: user_10
)

puts "Surfboards created"

#booking
Booking.create!(start_date: Date.new(2024, 8, 1), end_date: Date.new(2024, 8, 5), user: user_1, surfboard: surfboard_1)
Booking.create!(start_date: Date.new(2024, 8, 6), end_date: Date.new(2024, 8, 10), user: user_2, surfboard: surfboard_2)
Booking.create!(start_date: Date.new(2024, 8, 11), end_date: Date.new(2024, 8, 15), user: user_3, surfboard: surfboard_3)
Booking.create!(start_date: Date.new(2024, 8, 16), end_date: Date.new(2024, 8, 20), user: user_4, surfboard: surfboard_4)
Booking.create!(start_date: Date.new(2024, 8, 21), end_date: Date.new(2024, 8, 25), user: user_5, surfboard: surfboard_5)
Booking.create!(start_date: Date.new(2024, 8, 26), end_date: Date.new(2024, 8, 30), user: user_6, surfboard: surfboard_6)
Booking.create!(start_date: Date.new(2024, 9, 1), end_date: Date.new(2024, 9, 5), user: user_7, surfboard: surfboard_7)
Booking.create!(start_date: Date.new(2024, 9, 6), end_date: Date.new(2024, 9, 10), user: user_8, surfboard: surfboard_8)
Booking.create!(start_date: Date.new(2024, 9, 11), end_date: Date.new(2024, 9, 15), user: user_9, surfboard: surfboard_9)
Booking.create!(start_date: Date.new(2024, 9, 16), end_date: Date.new(2024, 9, 20), user: user_10, surfboard: surfboard_10)

puts "Bookings created"
