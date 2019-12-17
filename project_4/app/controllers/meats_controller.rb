class MeatsController < ApplicationController
    def index
        @product = Product.all
     
    end
    
end
