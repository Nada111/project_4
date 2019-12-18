class FruitsController < ApplicationController
    def index
        @product = Product.all
    end
    
end
