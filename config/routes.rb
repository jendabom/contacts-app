Rails.application.routes.draw do
  get '/contact' => 'contacts#show_the_contact'
  get '/all_contacts' => 'contacts#show_all_contacts'
  get '/create_contacts' => 'contacts#create_100_contacts'
end
