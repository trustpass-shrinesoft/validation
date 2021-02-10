Rails.application.routes.draw do
  resources :manage_user
  root to:'manage_user#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
