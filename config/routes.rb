Rails.application.routes.draw do
 
  get '/carts/add/product/:id', to: "carts#add_cart"
  #get 'cart/product_id:integer'
  #get 'cart/current_user:integercart_id:integer'
  get '/carts/:id/delete', to: "carts#destroy"

  get '/products/:id/delete', to: "products#destroy"
  devise_for :users 
  resources :products
  resources :customer
  resources :dairy
  resources :meats
  resources :fruits
  resources :carts
  resources :home


  get '/admin' , to: 'welcome#index'
  get '/admin/new' , to: 'controlpanle#new'
  get '/admin/new' , to: 'controlpanle#new'
  get '/admin/:id/delete', to: "products#destroy"


  resource :controlpanle, only: [:index, :new, :create, :destroy]


  root to: "customer#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
