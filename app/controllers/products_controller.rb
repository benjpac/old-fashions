class ProductsController < ApplicationController
  helper_method :sort_default, :direction_default
  def index
    @products = Product.search(params[:search]).order(sort_default+ " " + direction_default).paginate(:per_page => 10, :page => params[:page])
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

private

def sort_default
  params[:sort] || 'name'
end

def direction_default
  params[:direction] || 'asc'
end
