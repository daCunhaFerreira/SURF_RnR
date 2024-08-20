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
  photo: "https://images.unsplash.com/photo-1533198662378-20227bc95286",
  user: user_1
)

surfboard_2 = Surfboard.create!(
  name: "Shredder Pro 3000",
  address: "456 Sunset Blvd, Huntington Beach, CA",
  price: "35",
  details: "6' shortboard, designed for advanced surfers looking to carve waves.",
  photo: "https://images.unsplash.com/photo-1516810551572-53ffdd2e0181",
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
  photo: "https://images.unsplash.com/photo-1558123245-c231f69cbef5",
  user: user_4
)

surfboard_5 = Surfboard.create!(
  name: "Thunderstrike",
  address: "654 Shoreline St, Bondi Beach, Sydney, AUS",
  price: "50",
  details: "5'10'' performance shortboard, built for high-speed and sharp turns.",
  photo: "https://images.unsplash.com/photo-1527090445725-34eec47cbb94",
  user: user_5
)

surfboard_6 =Surfboard.create!(
  name: "Sunset Dreamer",
  address: "987 Oceanfront Walk, Venice Beach, CA",
  price: "20",
  details: "6'8'' funboard, great for catching smaller waves with ease.",
  photo: "https://images.unsplash.com/photo-1510250504557-ec0db6a4f4d2",
  user: user_6
)

surfboard_7 = Surfboard.create!(
  name: "Tropical Glide",
  address: "246 Beachfront Lane, Oahu, HI",
  price: "45",
  details: "9'6'' longboard, excellent for classic longboarding style in small waves.",
  photo: "https://images.unsplash.com/photo-1517758478390-b9d9a2c13b20",
  user: user_7
)

surfboard_8 = Surfboard.create!(
  name: "Stormrider",
  address: "112 Breakers Blvd, Byron Bay, AUS",
  price: "55",
  details: "6'2'' shortboard, lightweight and perfect for advanced riders.",
  photo: "https://images.unsplash.com/photo-1580125212563-81a2cf04d109",
  user: user_8
)

surfboard_9 = Surfboard.create!(
  name: "Pacific Soul",
  address: "333 Pipeline Rd, North Shore, Oahu, HI",
  price: "60",
  details: "7' fish board, perfect for high-performance in bigger waves.",
  photo: "https://images.unsplash.com/photo-1600181693014-0a2b30fd7f5f",
  user: user_9
)

surfboard_10 = Surfboard.create!(
  name: "Wave Rider",
  address: "777 Surf Ave, San Diego, CA",
  price: "35",
  details: "8' funboard, ideal for both beginners and experienced surfers.",
  photo: "https://images.unsplash.com/photo-1518509562904-91bbd73eb18e",
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
