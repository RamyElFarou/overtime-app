Rails.application.routes.draw do
  resources :add_type_to_users
  devise_for :users
  root to: 'static#homepage'
end
