# require 'unirest'
require 'rubygems'
require 'faker'

100.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  phone_number = Faker::PhoneNumber.phone_number
end

# response = Unirest.get("localhost:3000/contact")

# p "#{response.body['first_name']} #{response.body['last_name']}"

