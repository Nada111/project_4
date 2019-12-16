class CartsController < ApplicationController
    def new
        @cart = Cart.new(product_id: params[:id])
        if @cart.save
            redirect_to "/meat/#{params[:id]}"
        else
            redirect_to "/meat/#{params[:id]}"
        end
    end
    
end
