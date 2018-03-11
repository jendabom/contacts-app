require 'unirest'

response = Unirest.get("localhost:3000/v1/contact")

p "#{response.body['first_name']} #{response.body['last_name']}"

new_response = Unirest.get("localhost:3000/v1/all_contacts")
people = new_response.body["contacts"]

people.each do |person|
  p "#{person['first_name']} #{person['last_name']}"
end