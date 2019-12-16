class ControlpanleController < ApplicationController
  def index
  
    if current_user && current_user.admin
       @product = Product.all
    else
   redirect_to customer_index_path
    end


  end

  def new
  #   if current_user.admin
  #     @product = Product.new
  #  else
  #    redirect_to customer_index_path
  #  end
  end


    def create 
    #   @product =Product.new(product_params)
 
    # if(@product.save)
    #  redirect_to @product
    # else
    #  render 'new'
    # end
 end
 

  def destroy
  end
end
