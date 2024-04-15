# db/seeds.rb

# Ensure you have required the Faker gem
require 'faker'

# Number of records to create
number_of_records = 100000  # You can increase this number based on your needs
puts "Generating data..."

movies = []
ratings = []
number_of_records.times do |i|
  movie = {
        id: i,
        titletype: Faker::Book.genre,
        primarytitle: Faker::Movie.title,
        originaltitle: Faker::Book.title,
        isadult: [true, false].sample,
        startyear: Faker::Number.between(from: 1970, to: 2020),
        endyear: Faker::Number.between(from: 1900, to: 2020),
        runtimeminutes: Faker::Number.between(from: 30, to: 180),
        genres: Faker::Book.genre
    }
  movies << movie
  ratings << {
      averagerating: Faker::Number.decimal(l_digits: 1, r_digits: 1),
      numvotes: Faker::Number.between(from: 1, to: 10000),
      movie_id: i
  }
end

puts "Upserting #{number_of_records} to database..."

Movie.upsert_all movies
Rating.upsert_all ratings

puts "Created #{number_of_records} records in the database."
