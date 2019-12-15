class DairyController < ApplicationController
    def index
        @product = Product.all
    end
    
end
