Rails.application.routes.draw do
 
  get '/products/:id/delete', to: "products#destroy"
  devise_for :users 
  resources :products
  resources :customer
  resources :dairy
  resources :meats
  resources :fruits
  resources :home


  get 'welcome/index'
  root to: "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
