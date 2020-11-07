Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :steps
  resources :ingredients
  resources :recipes

  namespace :api do
    resources :recipes
  end
end
