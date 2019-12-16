class MeatsController < ApplicationController
    def index
        @product = Product.all
        @cart=Cart.all
    end
    
end
