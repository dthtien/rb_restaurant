class OrderItemsController < ApplicationController
  before_action :set_order_item

  def update
    if @order_item.update(order_item_params)
      @order_item.update_total_price
      @order_item.order.update_subtotal
    end

  end

  def destroy
  end

  private
    def set_order_item
      @order_item = OrderItem.find(params[:id])
    end

    def order_item_params
      params.require(:order_item).permit(:quantity)
    end
  end
