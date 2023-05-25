# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Creating 100 movies"

100.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Lorem.paragraph,
    rating: Faker::Number.between(from: 1, to: 10),
    poster_url: Faker::Internet.url
)
  puts "The movie was created"
end
puts "done"
