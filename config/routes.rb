Rails.application.routes.draw do
  resources :products
  resources :vendors
  resources :users
  root 'registrations#new'
  post "/mail" => "products#mail"
  post '/reserve' => 'products#reserve_product'
  # post "/products/:id/reserve_product"=> 'products#reserve_product'
  get '/signup' => 'registrations#new', as: :signup
  post '/signup' => 'registrations#create'
  get '/signin' => 'authentication#new', as: :signin
  post '/signin' => 'authentication#create'
  get '/signout' => 'authentication#destroy'

end
