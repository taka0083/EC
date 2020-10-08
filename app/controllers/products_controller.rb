class ProductsController < ApplicationController
  def index
    @products= Product.all
  end

  def show
    @product =Product.find(params[:id])
    @user = current_user.id
    @cart = Cart.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else render 'new'
    end
  end
  private
  def product_params
    params.require(:product).permit(:product_name,:product_price,:category_id,:product_image,:product_status,:product_comment)
  end
end
