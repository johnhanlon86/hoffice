Rails.application.routes.draw do
    
    
  resources :categories
  resources :orders do 
    resources:orderitems
  end
 
  devise_for :users do
    resources :orders
  end

  resources :items

  get 'cart/index'

  root 'static_pages#home'  
    
  get '/products' => "items#index"

  get '/about' => 'static_pages#about'
  
  get '/help' => 'static_pages#help'

  get '/aboutSend/:id' => 'static_pages#aboutSend'

  get '/cart', to: 'cart#index'

  get '/cart/:id', to: 'cart#add'
  
  get '/clearcart', to: 'cart#clearCart'
  
  get '/cart/remove/:id' => 'cart#remove'

  get '/cart/increase/:id' => 'cart#increase'

  get '/cart/decrease/:id' => 'cart#decrease'

  get '/checkout' => 'cart#createOrder'
  
  get '/paid/:id' => 'static_pages#paid'

  get '/admin'=> 'static_pages#admin'

  get 'category/:title', to: 'static_pages#category'

  post '/search' => 'items#search'

  get '/upgrade/:id' => 'static_pages#upgrade'

  get '/upgrade/:id' => 'static_pages#downgrade'


  #root :to => 'site#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
