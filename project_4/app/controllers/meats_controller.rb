class MeatsController < ApplicationController
    def index
        @product = Product.all
        # @cart= Cart.where(user_id: current_user.id)
        # p " cart ino"
        # p @cart
        @cart = Cart.where(user_id: current_user.id)
        p " cart ino"
        # p @cart
        @user = current_user.carts
    end
    
end
