require 'unirest'

base_url = "localhost:3000/v2"

response = Unirest.get("#{base_url}/contacts")

puts JSON.pretty_generate(response.body)

# ** show specific contact
# specific_response = Unirest.get("#{base_url}/contacts/100")
# puts JSON.pretty_generate(specific_response.body)

# ** update contact
# input_first_name = "Just"
# input_last_name = "Working"
# input_email = "just@example.org"
# input_phone_number = "8675309"

# update_response = Unirest.patch("#{base_url}/contacts/100", parameters: {first_name: input_first_name, 
#       last_name: input_last_name, 
#       email: input_email, phone_number: input_phone_number})

# puts JSON.pretty_generate(update_response.body)

# ** Delete contact
# delete_response = Unirest.delete("#{base_url}/contacts/99")
# puts JSON.pretty_generate(delete_response.body)

# ** Create New Contact
# input_first_name = "Just"
# input_last_name = "Working"
# input_email = "just@example.org"

# create_response = Unirest.post("#{base_url}/contacts", parameters: {first_name: input_first_name, 
#       last_name: input_last_name, 
#       email: input_email, phone_number: input_phone_number})


