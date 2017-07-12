class OrderProductsController < ApplicationController
  def create
    @order = current_order
    puts current_order.order_products.length
    @item = @order.order_products.new(item_params)
    @order.save
    session[:order_id] = @order.id
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js { }
    end
  end

  def destroy
    @order = current_order
    @item = @order.order_products.find(params[:id])
    @item.destroy
    @order.save
    redirect_to new_charge_path
  end

  private

  def item_params
    params.require(:order_product).permit(:quantity, :product_id)
  end
end
