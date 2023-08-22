# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Offer.destroy_all
User.destroy_all
puts "Creating users..."
User.create!(email: 'user1@example.com', password: 'password123', first_name: 'John', last_name: 'Doe', created_at: Time.now, updated_at: Time.now)
User.create!(email: 'user2@example.com', password: 'password232', first_name: 'Jane', last_name: 'Smith', created_at: Time.now, updated_at: Time.now)
User.create!(email: 'user3@example.com', password: 'password345', first_name: 'Alice', last_name: 'Johnson', created_at: Time.now, updated_at: Time.now)
User.create!(email: 'user4@example.com', password: 'password476', first_name: 'Bob', last_name: 'Brown', created_at: Time.now, updated_at: Time.now)
User.create!(email: 'user5@example.com', password: 'password589', first_name: 'Ella', last_name: 'Davis', created_at: Time.now, updated_at: Time.now)
User.create!(email: 'user6@example.com', password: 'password676', first_name: 'David', last_name: 'Lee', created_at: Time.now, updated_at: Time.now)
puts "Users created"
puts "Creating offers..."
Offer.create!(
  user_id: User.first.id,
  price: 780,
  description: 'Experienced Ruby on Rails developer available for freelance projects in Lyon, France.',
  title: 'Ruby on Rails Developer',
  date: Date.today,
  status: 'Available',
  experience: 5,
  profession: 'Web Developer',
  localisation: 'Lyon, France'
)

Offer.create!(
  user_id: User.second.id,
  price: 600,
  description: 'Skilled front-end developer seeking remote work opportunities.',
  title: 'Front-End Developer',
  date: Date.today,
  status: 'Available',
  experience: 3,
  profession: 'Web Developer',
  localisation: 'Marseille, France'
)

Offer.create!(
  user_id: User.third.id,
  price: 900,
  description: 'Backend developer with expertise in database design and optimization.',
  title: 'Backend Developer',
  date: Date.today,
  status: 'Available',
  experience: 6,
  profession: 'Web Developer',
  localisation: 'Paris, France'
)

Offer.create!(
  user_id: User.fourth.id,
  price: 550,
  description: 'React.js expert available for contract work on web applications.',
  title: 'React.js Developer',
  date: Date.today,
  status: 'Available',
  experience: 4,
  profession: 'Web Developer',
  localisation: 'Toulouse, France'
)

Offer.create!(
  user_id: User.fifth.id,
  price: 800,
  description: 'UI/UX designer passionate about creating user-friendly interfaces.',
  title: 'UI/UX Designer',
  date: Date.today,
  status: 'Available',
  experience: 5,
  profession: 'Designer',
  localisation: 'Bordeaux, France'
)

Offer.create!(
  user_id: User.last.id,
  price: 700,
  description: 'DevOps engineer specializing in automation and CI/CD pipelines.',
  title: 'DevOps Engineer',
  date: Date.today,
  status: 'Available',
  experience: 7,
  profession: 'DevOps',
  localisation: 'Nice, France'
)
puts "Finished!"
