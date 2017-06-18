class OrdersController < ApplicationController
  before_action :authenticate_user!, only: :update
  before_action :set_order

  def show
  end

  def update
    if @order.update(order_params)
      @order.update_subtotal
      @order.check_coupon
      flash[:notice] = 'Please leave your infomation!'
      redirect_to edit_profile_path(current_user.profile)
    else
      flash[:alert] = 'Cannot checkout this order'
      redirect_to :back
    end
  end

  def update_order
    if @order.order_items.create(order_item_params)
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
      params.require(:order_item).permit(:food_item_id, :quantity)
    end

    def order_params
      params.require(:order).permit(:coupon, order_items_attributes: [:id, :quantity, :_destroy ])
    end
end
