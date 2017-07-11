class ProductsController < ApplicationController
  def index
    @products = Product.all
    # if !current_order
    #   @order_product =
    # else
      @order_product = current_order.order_products.new
    # end
  end
end
