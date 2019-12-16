class ControlpanleController < ApplicationController
  def index
    if current_user.admin
       @product = Product.all
    else
      redirect_to customer_index_path
    end
  end

  def new
  end

  def create
  end

  def destroy
  end
end
