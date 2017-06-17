class OrdersController < ApplicationController
  before_action :set_order

  def show
  end

  def update
    order_item = @order.order_items.build(order_item_params)
    if order_item.save
      order_item.update_total_price
      @order.update_subtotal
      flash[:notice] = "ok!"
    else
      flash[:alert] = "not ok!"
    end
    redirect_to :back
  end

  private
    def set_order
      @order = current_order
      session[:order_id] = @order.id
    end

    def order_item_params
      params.require(:order_item).permit(:food_item_id, :name, :unit_price, :quantity)
    end
end
