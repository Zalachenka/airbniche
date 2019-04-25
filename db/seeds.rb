require 'faker'
Dog.destroy_all
City.destroy_all
DogSitter.destroy_all
Stroll.destroy_all

10.times do
	city = City.create!(city_name: Faker::Nation.capital_city)
end
puts "10 cities generated"

10.times do
	dogs = Dog.create!(name: Faker::FunnyName.name, city_id: City.all.sample.id)
end
puts "10 fake dogs created"

10.times do
	sitters = DogSitter.create!(name: Faker::Name.name, city_id: City.all.sample.id)
end
puts "10 fake sitters created"

10.times do
	stroll = Stroll.create!(dog_id: Dog.all.sample.id, dog_sitter_id: DogSitter.all.sample.id, city_id: City.all.sample.id)
end
puts "10 fake strolls created"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
