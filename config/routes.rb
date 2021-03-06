Rails.application.routes.draw do
  namespace :v1 do
    get '/contact' => 'contacts#show_the_contact'
    get '/all_contacts' => 'contacts#show_all_contacts'
  end

  namespace :v2 do
    get '/contacts' => 'contacts#index'
    post '/contacts' => 'contacts#create'
    get '/contacts/:id' => 'contacts#show'
    patch 'contacts/:id' => 'contacts#update'
    delete 'contacts/:id' => 'contacts#destroy'
  end

end
