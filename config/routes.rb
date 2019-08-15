Rails.application.routes.draw do
  resources :units
  resources :recipes
  resources :ingredients
  root 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
