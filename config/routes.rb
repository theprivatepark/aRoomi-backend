Rails.application.routes.draw do
  resources :listing_pictures
  get 'rails/g'
  get 'rails/resource'
  get 'rails/ListingPicture'
  get 'rails/img_url'
  resources :colleges
  resources :listings
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
