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
  address: "123 Ocean Ave, Malibu, CA",
  price: "25",
  details: "7'6'' longboard, perfect for beginners looking for a stable ride.",
  photo: "data:image/jpeg;base64,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",
  user: user_1
)

surfboard_2 = Surfboard.create!(
  name: "Shredder Pro 3000",
  address: "456 Sunset Blvd, Huntington Beach, CA",
  price: "35",
  details: "6' shortboard, designed for advanced surfers looking to carve waves.",
  photo: "https://borasurfar.com/wp-content/uploads/2024/08/IMG_6310-768x1024.webp",
  user: user_2
)

surfboard_3 = Surfboard.create!(
  name: "The Classic Logger",
  address: "789 Coastal Drive, Santa Cruz, CA",
  price: "30",
  details: "9' traditional longboard, ideal for noseriding and smooth glides.",
  photo: "https://images.unsplash.com/photo-1522071820081-009f0129c71c",
  user: user_3
)

surfboard_4 = Surfboard.create!(
  name: "Green Machine",
  address: "321 Surfside Road, Waikiki, HI",
  price: "40",
  details: "8' hybrid board, perfect for intermediate surfers, handles well in most conditions.",
  photo: "https://cdn11.bigcommerce.com/s-pllu8dargz/images/stencil/500x659/products/35432/78359/IMG_2415__53557.1723841389.jpg?c=1",
  user: user_4
)

surfboard_5 = Surfboard.create!(
  name: "Thunderstrike",
  address: "654 Shoreline St, Bondi Beach, Sydney, AUS",
  price: "50",
  details: "5'10'' performance shortboard, built for high-speed and sharp turns.",
  photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDZ0m0EaSghT04qxFAMxM7XH8YcGQnD1zXwfuSUnLXvGi5kMJ8u6bt1V-JE268pRlZc_8&usqp=CAU",
  user: user_5
)

surfboard_6 =Surfboard.create!(
  name: "Sunset Dreamer",
  address: "987 Oceanfront Walk, Venice Beach, CA",
  price: "20",
  details: "6'8'' funboard, great for catching smaller waves with ease.",
  photo: "https://www.surfstationstore.com/cdn/shop/files/TronLost_2000x.jpg?v=1719509913",
  user: user_6
)

surfboard_7 = Surfboard.create!(
  name: "Tropical Glide",
  address: "246 Beachfront Lane, Oahu, HI",
  price: "45",
  details: "9'6'' longboard, excellent for classic longboarding style in small waves.",
  photo: "https://images.squarespace-cdn.com/content/v1/5197c761e4b0a2d4e1c2f428/1543452329146-Z1XSA4OWVB8XCYPVY9W6/used+shortboards+5%278+-+6%272",
  user: user_7
)

surfboard_8 = Surfboard.create!(
  name: "Stormrider",
  address: "112 Breakers Blvd, Byron Bay, AUS",
  price: "55",
  details: "6'2'' shortboard, lightweight and perfect for advanced riders.",
  photo: "https://cdn11.bigcommerce.com/s-oqgbp7cpws/images/stencil/original/products/24791/25265/IMG_4629_2__36635.1661368150.jpg?c=1",
  user: user_8
)

surfboard_9 = Surfboard.create!(
  name: "Pacific Soul",
  address: "333 Pipeline Rd, North Shore, Oahu, HI",
  price: "60",
  details: "7' fish board, perfect for high-performance in bigger waves.",
  photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQilAPA6J7yBLlnJCU2wiZRxzlkNz-etP2DhQ&s",
  user: user_9
)

surfboard_10 = Surfboard.create!(
  name: "Wave Rider",
  address: "777 Surf Ave, San Diego, CA",
  price: "35",
  details: "8' funboard, ideal for both beginners and experienced surfers.",
  photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9TvpHhujFdr6Q5DwxDrJmy64_DcNoq0vP1A&s",
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
