Rails.application.routes.draw do
    
    
  resources :orders
  get 'cart/index'
  devise_for :users
  resources :items
  
  root 'static_pages#home'  
    
  get '/products' => "items#index"

  get '/about' => 'static_pages#about'
  
  get '/help' => 'static_pages#help'

  get '/cart', to: 'cart#index'

  get '/cart/:id', to: 'cart#add'
  
  get '/clearcart', to: 'cart#clearCart'
  
  get '/cart/remove/:id' => 'cart#remove'

  get '/cart/increase/:id' => 'cart#increase'

  get '/cart/decrease/:id' => 'cart#decrease'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
