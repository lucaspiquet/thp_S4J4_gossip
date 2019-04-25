# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#User
10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: Faker::Number.within(1..99))
end

#City
10.times do
  city = City.create!(name: Faker::Name.name, zip_code: Faker::Address.zip_code)
end

#Gossip
20.times do
  gossip = Gossip.create!(title: Faker::Food.dish, content: Faker::Lorem.sentence)
end

#Tag
10.times do
  tag = Tag.create!(title: Faker::Food.dish)
end

#PrivateMessage
10.times do
  privatemessage = PrivateMessage.create!(content: Faker::Lorem.sentence)
end
