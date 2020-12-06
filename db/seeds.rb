# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.delete_all
Company.reset_pk_sequence
Company.create([
  { name: "MoGo", location: "New York" },
  { name: "Wirkkle", location: "London" },
  { name: "Artesis", location: "Saint-Petersburg" },
  { name: "BuildEmpire", location: "London" },
])

Job.delete_all
Job.reset_pk_sequence
Job.create([
  { name: "Sinatra React", place: "Remote", company_id: 1 },
  { name: "Ruby React", place: "Contract", company_id: 2 },
  { name: "React", place: "Remote", company_id: 3 },
  { name: "Node React", place: "Permanent", company_id: 1 },
  { name: "Ruby on Rails", place: "Remote", company_id: 4 },
  { name: "Node", place: "Permanent", company_id: 4 },
  { name: "Javascript CSS HTML", place: "Permanent", company_id: 4 },
])

Geek.delete_all
Geek.reset_pk_sequence
Geek.create([
  { name: "Mike", stack: "Sinatra React", cv: true },
  { name: "Alex", stack: "Ruby React", cv: true },
  { name: "Martha", stack: "Rails", cv: false },
  { name: "Juri", stack: "Java", cv: true },
  { name: "Andrew", stack: "PHP", cv: false },
  { name: "Nina", stack: "Node", cv: true },
  { name: "Bob", stack: "Front end", cv: true },
  { name: "Kate", stack: "PHP", cv: false },
  { name: "Boris", stack: "Full stack", cv: true },
])

Apply.delete_all
Apply.reset_pk_sequence
Apply.create([
  { job_id: 1, geek_id: 1, read: true, invited: true },
  { job_id: 1, geek_id: 2, read: false, invited: false },
  { job_id: 5, geek_id: 5, read: true, invited: false },
  { job_id: 6, geek_id: 8, read: false, invited: false },
])

Resort.delete_all
Resort.reset_pk_sequence
Resort.create([
  { name: 'Bahia Blanca Resorts', email: 'blookho@gmail.com', description: 'Bahia Blanca is a holiday superior apartment resort situated on the island of Gran Canaria' },
  { name: 'Holiday Club Katinkulta', email: 'zoneiva@gmail.com', description: 'The most versatile holiday resort in the Nordic Countries – is located in the Kainuu region in North Eastern Finland, Vuokatti' }
  ])

Appartment.delete_all
Appartment.reset_pk_sequence
Appartment.create([
  { room_type: 'Superior Room', resort_id: 1, description: 'One bedroom and bathroom superior apartment with balcony or yard' },
  { room_type: 'Deluxe 2 bedrooms', resort_id: 1, description: 'Exclusive luxury suite 80 m with two bedrooms and bathrooms' },
  { room_type: 'Single Superior Room', resort_id: 2, description: 'Spacious superior-class room with bathroom and balcony' },
  { room_type: 'Double Superior Room', resort_id: 2, description: 'Every room boasts a balcony with an amazing view of the golf course or the Vuokatti hills' },
  { room_type: 'Double Suite', resort_id: 2, description: 'Spacious and high-quality suite contain a separate bedroom, living room and bathroom with a sauna' }
])