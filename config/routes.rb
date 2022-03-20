Rails.application.routes.draw do
  get 'parents/phone_number'
  get 'parents/address'
  resources :bookings
  resources :babysitters
  resources :parents
  resources :children
  # root to: 'pages#home'
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
