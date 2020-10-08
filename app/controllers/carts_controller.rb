class CartsController < ApplicationController
  def index
    @carts =Cart.where(id:[current_user.id])
  end

  def create

    @cart = Cart.new(cart_params)
    @cart.user_id = current_user.id
    @cart.product_id = params[:product_id]
    @cart.save
    redirect_to carts_path


  end
  private
  def cart_params
    params.require(:cart).permit(:number)
  end
end
