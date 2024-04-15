# db/seeds.rb

# Ensure you have required the Faker gem
require 'faker'

# Number of records to create
number_of_records = 1000  # You can increase this number based on your needs

ActiveRecord::Base.transaction do
  number_of_records.times do |i|
    movie = Movie.create(
      titletype: Faker::Book.genre,
      primarytitle: Faker::Book.title,
      originaltitle: Faker::Book.title,
      isadult: [true, false].sample,
      startyear: Faker::Number.between(from: 1900, to: 2020),
      endyear: Faker::Number.between(from: 1900, to: 2020),
      runtimeminutes: Faker::Number.between(from: 30, to: 180),
      genres: Faker::Book.genre
    )

    Rating.create(
      averagerating: Faker::Number.decimal(l_digits: 1, r_digits: 1),
      numvotes: Faker::Number.between(from: 1, to: 10000),
      movie_id: movie.id
    )
  end
end

puts "Created #{number_of_records} records in the database."
