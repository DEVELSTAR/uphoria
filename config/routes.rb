Rails.application.routes.draw do
  resources :man_shoes
  root 'home#index'

end
