Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
 get '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :colleges
  resources :listings
  resources :users, only: [:create, :show, :index]
  resources :listing_pictures
  get 'rails/g'
  get 'rails/resource'
  get 'rails/ListingPicture'
  get 'rails/img_url'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
