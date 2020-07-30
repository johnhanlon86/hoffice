Rails.application.routes.draw do
    
    
  get 'cart/index'
  devise_for :users
  resources :items
  
  root 'static_pages#home'  
    
  get '/products' => "items#index"

  get '/about' => 'static_pages#about'
  
  get '/help' => 'static_pages#help'

  get '/cart', to: 'cart#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
