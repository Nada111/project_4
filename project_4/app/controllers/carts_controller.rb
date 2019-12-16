class CartsController < ApplicationController
    def add_cart
        p current_user
        if current_user
            
             @cart = Cart.new
             
             @cart[:user_id]= current_user.id 
             @cart[:product_id]= params[:id] 

            if @cart.save
                redirect_to request.referer
            else
                redirect_to request.referer

            end
        else
            redirect_to product_path  
        end
      
    end
    
end
