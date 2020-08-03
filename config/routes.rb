Rails.application.routes.draw do
    
    
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

  get '/cart', to: 'cart#index'

  get '/cart/:id', to: 'cart#add'
  
  get '/clearcart', to: 'cart#clearCart'
  
  get '/cart/remove/:id' => 'cart#remove'

  get '/cart/increase/:id' => 'cart#increase'

  get '/cart/decrease/:id' => 'cart#decrease'

  get '/checkout' => 'cart#createOrder'

  get '/paid/:id' => 'static_pages#paid'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
