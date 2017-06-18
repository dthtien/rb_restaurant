class FoodItemsController < ApplicationController
  before_action :set_food_item, only: [:show]

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
end
