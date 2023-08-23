# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Offer.destroy_all
User.destroy_all
puts "Creating users..."
user_1 = User.new(email: 'user1@example.com', password: 'password123', first_name: 'Maïwenn', last_name: 'Bertho', created_at: Time.now, updated_at: Time.now)
user_2 = User.new(email: 'user2@example.com', password: 'password232', first_name: 'Andy', last_name: 'de Cock', created_at: Time.now, updated_at: Time.now)
user_3 = User.new(email: 'user3@example.com', password: 'password345', first_name: 'Victoria', last_name: 'Paranina', created_at: Time.now, updated_at: Time.now)
user_4 = User.new(email: 'user4@example.com', password: 'password476', first_name: 'Emma', last_name: 'Cauty', created_at: Time.now, updated_at: Time.now)
user_5 = User.new(email: 'user5@example.com', password: 'password589', first_name: 'Laura', last_name: 'Beauvais', created_at: Time.now, updated_at: Time.now)
user_6 = User.new(email: 'user6@example.com', password: 'password676', first_name: 'Joris', last_name: 'Chenna', created_at: Time.now, updated_at: Time.now)

require "open-uri"

file = URI.open("https://avatars.githubusercontent.com/u/102687903?v=4")
user_1.photo.attach(io: file, filename: "maiwenn.png", content_type: "image/png")
user_1.save

file_2 = URI.open("https://avatars.githubusercontent.com/u/139124191?v=4")
user_2.photo.attach(io: file_2, filename: "andy.png", content_type: "image/png")
user_2.save

file_3 = URI.open("https://avatars.githubusercontent.com/u/139124726?v=4")
user_3.photo.attach(io: file_3, filename: "victoria.png", content_type: "image/png")
user_3.save

file_4 = URI.open("https://avatars.githubusercontent.com/u/135238187?v=4")
user_4.photo.attach(io: file_4, filename: "emma.png", content_type: "image/png")
user_4.save

file_5 = URI.open("https://avatars.githubusercontent.com/u/101594582?v=4")
user_5.photo.attach(io: file_5, filename: "laura.png", content_type: "image/png")
user_5.save

file_6 = URI.open("https://avatars.githubusercontent.com/u/139125894?v=4")
user_6.photo.attach(io: file_6, filename: "joris.png", content_type: "image/png")
user_6.save



puts "Users created"
puts "Creating offers..."
Offer.create!(
  user_id: user_1.id,
  price: 780,
  description: 'Experienced Ruby on Rails developer available for freelance projects in Lyon, France.',
  title: 'Ruby on Rails Developer',
  date: Date.today,
  experience: 5,
  profession: 'Web Developer',
  localisation: '2 rue Dupaty, Bordeaux, France'
)

Offer.create!(
  user_id: user_2.id,
  price: 600,
  description: 'Skilled front-end developer seeking remote work opportunities.',
  title: 'Front-End Developer',
  date: Date.today,
  experience: 3,
  profession: 'Web Developer',
  localisation: '3 rue de Macau, Bordeaux, France'
)

Offer.create!(
  user_id: user_3.id,
  price: 900,
  description: 'Backend developer with expertise in database design and optimization.',
  title: 'Backend Developer',
  date: Date.today,
  experience: 6,
  profession: 'Web Developer',
  localisation: '4 rue des Girondins, Bordeaux, France'
)

Offer.create!(
  user_id: user_4.id,
  price: 550,
  description: 'React.js expert available for contract work on web applications.',
  title: 'React.js Developer',
  date: Date.today,
  experience: 4,
  profession: 'Web Developer',
  localisation: '30 rue Bouffard, Bordeaux, France'
)

Offer.create!(
  user_id: user_5.id,
  price: 800,
  description: 'UI/UX designer passionate about creating user-friendly interfaces.',
  title: 'UI/UX Designer',
  date: Date.today,
  experience: 5,
  profession: 'Designer',
  localisation: '5 rue André, Bordeaux, France'
)

Offer.create!(
  user_id: user_6.id,
  price: 700,
  description: 'DevOps engineer specializing in automation and CI/CD pipelines.',
  title: 'DevOps Engineer',
  date: Date.today,
  experience: 7,
  profession: 'DevOps',
  localisation: '8 rue Louis Mie, Bordeaux, France'
)
puts "Finished!"
