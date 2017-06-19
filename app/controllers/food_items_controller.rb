class FoodItemsController < ApplicationController
  before_action :authenticate_user!, except: :show
  before_action :set_food_item, only: [:show]
  before_action :log_impression, only: [:show]

  def new
    @food_item = FoodItem.new
  end

  def create
    @food_item = FoodItem.new(food_item_params)
    if @food_item.save
      flash[:notice] = "Successfully created..."
      redirect_to @food_item
    else
      flash[:alert] = "Can't created..."
      render new
    end
      
  end

  def show
    @review = Review.new
  end

  private
    def set_food_item
      @food_item = FoodItem.find(params[:id])
    end

    def food_item_params
      params.require(:food_item).permit(:name, :description, :price, :section_id, :image_link)
    end

    def log_impression
      if user_signed_in?
        @food_item.impressions.find_or_create_by(ip_address: request.remote_ip,
                                    user_id: current_user.id)
      else
        @food_item.impressions.find_or_create_by(ip_address: request.remote_ip)
      end
    end
end
