class ProductsController < ApplicationController
  def index
    @products = Product.search(params[:search]).all.paginate(:per_page => 10, :page => params[:page])
    @order_product = current_order.order_products.new
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html { redirect_to product_path(@product) }
      format.js { }
    end
  end
end
