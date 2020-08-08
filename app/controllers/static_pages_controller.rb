class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def help
  end
  

  def admin 
    if current_user.admin?
     # @users = User.all

    else 

      redirect_to "/"

  end

  end

  def about 
    #if current_user.admin?

    #else 
    #current_user.update_attribute :admin, true
      #redirect_to "/"
  #end 

  end

  def category
    catName = params[:title]
        @items = Item.where("category like ? ", catName)
    end
    

  #def category
  #  catName = params[:title]
  #  @items = Item.where("category like ?", catName)
  #end

  def paid
    @order = Order.find_by(id: params[:id])
    @order.update_attribute(:status , "Paid by User: #{current_user.email}")
  end

end
