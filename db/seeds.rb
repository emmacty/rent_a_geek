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

file_7 = URI.open("https://upload.wikimedia.org/wikipedia/en/d/dc/MichaelScott.png?20111015043011")
user_7.photo.attach(io: file_7, filename: "Michael.png", content_type: "image/png")
user_7.save

file_8 = URI.open("https://static.wikia.nocookie.net/theoffice/images/c/c5/Dwight_.jpg/revision/latest/scale-to-width-down/1200?cb=20170701082424")
user_8.photo.attach(io: file_8, filename: "Dwight.png", content_type: "image/png")
user_8.save

file_9 = URI.open("https://static.papergeek.fr/2017/07/dewey-malcolm.jpg")
user_9.photo.attach(io: file_9, filename: "Dewey.png", content_type: "image/png")
user_9.save

file_10 = URI.open("https://miro.medium.com/v2/resize:fit:1200/1*KPqaxOOGnHWsfzUipNSkDw.jpeg")
user_10.photo.attach(io: file_10, filename: "Chandler.png", content_type: "image/png")
user_10.save

puts "Users created"
puts "Creating offers..."
Offer.create!(
  user_id: user_1.id,
  price: 780,
  description: "Are you in search of a skilled and passionate Ruby developer who can bring your web projects to life? Look no further! I'm a seasoned Ruby web developer with a strong track record of crafting robust and innovative web solutions.",
  title: 'Ruby on Rails Developer',
  date: "#{Date.today} to #{Date.today + 10}",
  experience: 5,
  profession: 'Web Developer',
  localisation: '2 rue Dupaty,33300 Bordeaux, France'
)

Offer.create!(
  user_id: user_2.id,
  price: 850,
  description: 'Experienced Front-End Developer with a passion for crafting visually appealing and user-centric web experiences. Proficient in translating design concepts into pixel-perfect, responsive interfaces using HTML, CSS, and JavaScript. Skilled in collaborating with cross-functional teams to implement intuitive and engaging user interfaces.',
  title: 'Front-End Developer',
  date: "#{Date.today} to #{Date.today + 15}",
  experience: 3,
  profession: 'Web Developer',
  localisation: '3 Rue De Macau, 33000 Bordeaux, France'
)

Offer.create!(
  user_id: user_3.id,
  price: 900,
  description: 'Seasoned Backend Developer with a strong foundation in designing, implementing, and maintaining robust server-side applications and databases. Proficient in a variety of programming languages, including but not limited to Python, Java, and Ruby, with a focus on scalability and performance optimization. Adept at crafting secure and efficient APIs, integrating third-party services, and collaborating with front-end teams to deliver seamless end-to-end solutions',
  title: 'Backend Developer',
  date: "#{Date.today} to #{Date.today + 8}",
  experience: 6,
  profession: 'Web Developer',
  localisation: '4 rue des Girondins, 33200 Bordeaux, France'
)

Offer.create!(
  user_id: user_5.id,
  price: 800,
  description: 'Creative UI/UX Designer dedicated to crafting elegant and intuitive digital experiences that blend user needs with business objectives. Proficient in wireframing, prototyping, and creating visually stunning interfaces that resonate with target audiences. Skilled at conducting user research to inform design decisions, iterating based on feedback, and collaborating seamlessly with cross-functional teams',
  title: 'UI/UX Designer',
  date: "#{Date.today} to #{Date.today + 3}",
  experience: 5,
  profession: 'Designer',
  localisation: '5 rue André, 33200 Bordeaux, France'
)

Offer.create!(
  user_id: user_6.id,
  price: 700,
  description: 'Experienced DevOps Engineer adept at optimizing development and operational workflows to enhance software delivery and reliability. Skilled in automating deployment pipelines, infrastructure provisioning, and configuration management using tools like Docker, Kubernetes, and Jenkins. Proficient in cloud platforms such as AWS, Azure, or GCP, with a focus on creating scalable and resilient systems',
  title: 'DevOps Engineer',
  date: "#{Date.today} to #{Date.today + 7}",
  experience: 7,
  profession: 'DevOps',
  localisation: '8 rue Louis Mie, 33000 Bordeaux, France'
)

Offer.create!(
  user_id: user_7.id,
  price: 900,
  description: 'Guess what, everyone? I am proud to announce that I, Michael Scott, am a Rails developer extraordinaire! Just like the rails on a train, I m here to steer this coding journey to success. And remember, my code may not always be on track, but it s full of passion, creativity, and a touch of that signature Michael magic!',
  title: 'Developer rails ',
  date: "#{Date.today} to #{Date.today + 5}",
  experience: 7,
  profession: 'Developer',
  localisation: '8 rue Reignier, 33100 Bordeaux, France'
)

Offer.create!(
  user_id: user_8.id,
  price: 400,
  description: 'Fact: I am a seasoned Rails developer, much like a seasoned beet farmer. With my expertise, I sow the seeds of clean code, nurture efficient algorithms, and harvest bug-free applications. You can trust my code to be as reliable as my meticulously calculated Schrute Bucks conversion rates.',
  title: 'Developer professional and serious',
  date: "#{Date.today} to #{Date.today + 20}",
  experience: 7,
  profession: 'Pro developer',
  localisation: '8 rue Corot, 33100 Bordeaux, France'
)

Offer.create!(
  user_id: user_9.id,
  price: 700,
  description: 'Hey, you know what s cool? Being a backend developer is like secretly pulling the strings behind the scenes, weaving the web of code like a ninja spider. I mean, who needs the spotlight when you can make the website run smoother than mom s homemade pie? And just like that pie, my coding is the hidden ingredient that makes everything deliciously functional!',
  title: 'Backend developer',
  date: "#{Date.today} to #{Date.today + 17}",
  experience: 7,
  profession: 'Backend developer',
  localisation: '2 rue Jean Descas, 33800 Bordeaux, France'
)

Offer.create!(
  user_id: user_10.id,
  price: 550,
  description: 'Sure thing! I m just a master at cookie disabling, a debugging ninja, and a copy-paste magician. My resume? Well, it s mostly a collection of misspelled commands and quick fixes that somehow turn into long-term solutions. I like to call it the subtle art of intuitive development',
  title: 'Dev',
  date: "#{Date.today} to #{Date.today + 31}",
  experience: 7,
  profession: 'Dev',
  localisation: '5 rue Pelleport, 33800 Bordeaux, France'
)
puts "Finished!"
