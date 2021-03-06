# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.destroy_all
User.destroy_all 
Empresa.destroy_all
Reclamo.destroy_all 

#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

30.times do |i|
 User.create(
	 email: Faker::Internet.email,
	 password: '123456')
end

20.times do |i|
 Empresa.create(
	 name: Faker::StarWars.planet,
	 description: Faker::StarWars.quote)
end

250.times do |i|
 Reclamo.create(
	 contenido: Faker::RickAndMorty.quote,
	 empresa: Empresa.order("RANDOM()").first,
 	 user: User.order("RANDOM()").first)
end