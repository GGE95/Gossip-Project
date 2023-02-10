# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
10.times do
  user = User.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, description: Faker::ChuckNorris.fact,email: Faker::Internet.email, age: rand(1..100))
end

# 10.times do
#   city = City.create!(name: Faker::WorldCup.city, zip_code: Faker::Alphanumeric.alphanumeric(number: 10))
# end