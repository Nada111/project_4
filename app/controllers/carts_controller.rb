class CartsController < ApplicationController
    def add_cart
      
        if current_user
            
             @cart = Cart.new
             
             @cart[:user_id]= current_user.id 
             @cart[:product_id]= params[:id] 

            if @cart.save
                redirect_to request.referer
            else
                redirect_to request.referer

            end
       

         end
      
    end

    def destroy
        @cart =Cart.find(params[:id])
        @cart.destroy
        redirect_to carts_path
    
    end
    
end
