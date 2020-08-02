class CartController < ApplicationController

# Add user authentication to ensure that items can only be added to cart for users that are logged in.
before_action :authenticate_user!

  def add
      # get the Id of the product
      id = params[:id]

    # if the cart is already been created, use existing cart else create a blank cart
    if  session[:cart] then
        cart = session[:cart]
    else
        session[:cart] = {}
        cart = session[:cart]
    end
    #If the product is already added it increments by 1 else product set to 1
    if  cart[id] then
        cart[id] = cart[id] + 1
    else
        cart[id]= 1
    end  

    redirect_to :action => :index

  end

  def increase
    
    id = params[:id]
    cart = session[:cart]
    
    # Add one.
    cart[id] = cart[id] + 1
    
    #Taking us to cart index[view] page
    redirect_to :action => :index
    
  end

  def decrease
    
    id = params[:id]
    cart = session[:cart]
    
    # If there is an item with this id in the cart, remove.
    if cart[id] == 1 then
       cart.delete id
     else
     cart[id] = cart[id] - 1
    end
    
    #Taking us to cart index[view] page
    redirect_to :action => :index
    
  end
  
  def clearCart
    #sets session variable to nil and bring back to index
    session[:cart] = nil
    redirect_to :action => :index
  end 



  def index
     #passes a cart to display
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end  
  end

  def remove

    id = params[:id]
    cart = session[:cart]
    cart.delete id
    
    redirect_to :root
  end

end 



