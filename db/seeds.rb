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
user_4 = User.new(email: 'emma@example.com', password: 'password', first_name: 'Emma', last_name: 'Cauty', created_at: Time.now, updated_at: Time.now)
user_5 = User.new(email: 'user5@example.com', password: 'password589', first_name: 'Laura', last_name: 'Beauvais', created_at: Time.now, updated_at: Time.now)
user_6 = User.new(email: 'user6@example.com', password: 'password676', first_name: 'Joris', last_name: 'Chenna', created_at: Time.now, updated_at: Time.now)
user_7 = User.new(email: 'user7@example.com', password: 'password677', first_name: 'Michael', last_name: 'Scott', created_at: Time.now, updated_at: Time.now)
user_8 = User.new(email: 'user8@example.com', password: 'password678', first_name: 'Dwight', last_name: 'Schrute', created_at: Time.now, updated_at: Time.now)
user_9 = User.new(email: 'user9@example.com', password: 'password679', first_name: 'Dewey', last_name: 'Wilkerson', created_at: Time.now, updated_at: Time.now)
user_10 = User.new(email: 'user10@example.com', password: 'password680', first_name: 'Chandler', last_name: 'Bing', created_at: Time.now, updated_at: Time.now)

require "open-uri"

file = URI.open("https://images.caradisiac.com/images/7/7/5/2/187752/S0-plus-belle-voiture-de-l-annee-2021-et-la-gagnante-est-659940.jpg")
user_1.photo.attach(io: file, filename: "maiwenn.png", content_type: "image/png")
user_1.save

file_2 = URI.open("https://images.rtl.fr/~c/2000v2000/rtl/www/1566968-jeep-avenger.jpg")
user_2.photo.attach(io: file_2, filename: "andy.png", content_type: "image/png")
user_2.save

file_3 = URI.open("https://www.motorlegend.com/home/img/web/1694421394-mobile.jpg")
user_3.photo.attach(io: file_3, filename: "victoria.png", content_type: "image/png")
user_3.save

file_4 = URI.open("https://img.phonandroid.com/2022/10/BMW-iX-8.jpg")
user_4.photo.attach(io: file_4, filename: "emma.png", content_type: "image/png")
user_4.save

file_5 = URI.open("https://static1.caroom.fr/guide/wp-content/uploads/2023/01/voiture-electrique-2023-1200x643.jpg")
user_5.photo.attach(io: file_5, filename: "laura.png", content_type: "image/png")
user_5.save

file_6 = URI.open("https://www.sixt.fr/magazine/wp-content/uploads//sites/3/2022/10/Audi-e-tron-GT-RS.jpg")
user_6.photo.attach(io: file_6, filename: "joris.png", content_type: "image/png")
user_6.save

file_7 = URI.open("https://www.numerama.com/wp-content/uploads/2023/01/peugeot-e208.jpg")
user_7.photo.attach(io: file_7, filename: "Michael.png", content_type: "image/png")
user_7.save

file_8 = URI.open("https://www.index-assurance.fr/fichiers/images/peugeot-208-allure.jpg")
user_8.photo.attach(io: file_8, filename: "Dwight.png", content_type: "image/png")
user_8.save

file_9 = URI.open("https://qph.cf2.quoracdn.net/main-qimg-073589712337b5e9c954abc30961d168-lq")
user_9.photo.attach(io: file_9, filename: "Dewey.png", content_type: "image/png")
user_9.save

file_10 = URI.open("https://img.leboncoin.fr/api/v1/lbcpb1/images/1a/15/35/1a15353afd48671bbfcd68f83244c078c37da855.jpg?rule=ad-large")
user_10.photo.attach(io: file_10, filename: "Chandler.png", content_type: "image/png")
user_10.save

puts "Users created"
puts "Creating offers..."
offer_1 = Offer.create!(
  user_id: user_1.id,
  price_per_day: 780,
  model: "Mercedes",
  brand: 'AMG',
  date: "#{Date.today} au #{Date.today + 10}",
  year_of_production: 2014,
  profession: 'Web Developer',
  localisation: '2 rue Dupaty,33300 Bordeaux, France'
)

offer_2 = Offer.create!(
  user_id: user_2.id,
  price_per_day: 850,
  model: 'Jeep',
  brand: 'Model 1',
  date: "#{Date.today} au #{Date.today + 15}",
  year_of_production: 2016,
  profession: 'Web Developer',
  localisation: '3 Rue De Macau, 33000 Bordeaux, France'
)

offer_3 = Offer.create!(
  user_id: user_3.id,
  price_per_day: 900,
  model: 'Porshe',
  brand: 'Model 2',
  date: "#{Date.today} au #{Date.today + 8}",
  year_of_production: 2019,
  profession: 'Web Developer',
  localisation: '4 rue des Girondins, 33200 Bordeaux, France'
)

offer_5 = Offer.create!(
  user_id: user_5.id,
  price_per_day: 800,
  model: 'Renault',
  brand: 'Zoe',
  date: "#{Date.today} au #{Date.today + 3}",
  year_of_production: 2021,
  profession: 'Designer',
  localisation: '5 rue André, 33200 Bordeaux, France'
)

offer_6 = Offer.create!(
  user_id: user_6.id,
  price_per_day: 700,
  model: 'Audi',
  brand: 'RS4',
  date: "#{Date.today} au #{Date.today + 7}",
  year_of_production: 2022,
  profession: 'DevOps',
  localisation: '8 rue Louis Mie, 33000 Bordeaux, France'
)

offer_8 = Offer.create!(
  user_id: user_8.id,
  price_per_day: 400,
  model: 'Peugeot',
  brand: '206e',
  date: "#{Date.today} au #{Date.today + 20}",
  year_of_production: 2015,
  profession: 'Pro developer',
  localisation: '8 rue Corot, 33100 Bordeaux, France'
)

offer_9 = Offer.create!(
  user_id: user_9.id,
  price_per_day: 700,
  model: 'Peugeot',
  brand: '206',
  date: "#{Date.today} au #{Date.today + 17}",
  year_of_production: 2017,
  profession: 'Backend developer',
  localisation: '2 rue Jean Descas, 33800 Bordeaux, France'
)

offer_10 = Offer.create!(
  user_id: user_10.id,
  price_per_day: 550,
  model: 'Peugeot',
  brand: '208',
  date: "#{Date.today} au #{Date.today + 31}",
  year_of_production: 2016,
  profession: 'Dev',
  localisation: '2 Rue Sala, 69002, Lyon'
)
puts "Finished!"

puts "Creating reviews..."

Review.create!(
  name: "John",
  rating: "⭐⭐⭐⭐⭐",
  comment: "Excellent service ! La voiture était propre et en excellent état. Je vais certainement louer à nouveau chez eux",
  offer_id: offer_1.id
)

Review.create!(
  name: "Lisa",
  rating: "⭐⭐⭐⭐⭐",
  comment: "Processus de location sans accroc et un large choix de voitures à choisir. J'ai passé un excellent voyage sur la route !",
  offer_id: offer_2.id
)

Review.create!(
  name: "Alice",
  rating: "⭐⭐⭐⭐⭐",
  comment: "Le personnel était sympathique et serviable. J'ai eu une expérience de location sans tracas.",
  offer_id: offer_3.id
)

Review.create!(
  name: "Tom",
  rating: "⭐⭐⭐⭐⭐",
  comment: "Des prix abordables et un système de réservation en ligne pratique. Je recommanderai à mes amis et ma famille !",
  offer_id: offer_5.id
)

Review.create!(
  name: "Charles",
  rating: "⭐⭐⭐⭐⭐",
  comment: "La voiture a été livrée à l'heure, et c'était exactement ce dont j'avais besoin pour mon voyage. Merci !",
  offer_id: offer_6.id
)

Review.create!(
  name: "Charles",
  rating: "⭐⭐⭐⭐",
  comment: "J'ai loué une voiture pour une escapade d'un week-end, et tout s'est bien passé. Pas de frais cachés, juste une location simple.",
  offer_id: offer_8.id
)

Review.create!(
  name: "Tina",
  rating: "⭐⭐⭐⭐⭐",
  comment: "J'ai utilisé ce service de location plusieurs fois, et ils ne m'ont jamais déçu. Un excellent rapport qualité-prix.",
  offer_id: offer_9.id
)

Review.create!(
  name: "Joey",
  rating: "⭐⭐⭐⭐⭐",
  comment: "La voiture était impeccable, et la prise en charge et la restitution étaient sans effort. Très recommandé !",
  offer_id: offer_10.id
)

puts "Reviews created!"
