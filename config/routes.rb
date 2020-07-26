Rails.application.routes.draw do
    
    
  devise_for :users
  resources :items
  
  root 'static_pages#home'  
    
  get '/products' => "items#index"

  get '/about' => 'static_pages#about'
  
  get '/help' => 'static_pages#help'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
