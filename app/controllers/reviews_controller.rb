class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_food_item

  def create
    @review = @food_item.reviews.build(review_params)
    @review.user = current_user
    respond_to do |format|
      if @review.save
        format.js
      end
    end
  end

  private
    def find_food_item
      @food_item = FoodItem.find(params[:food_item_id])
    end

    def review_params 
      params.require(:review).permit(:star_id, :body)
    end
end
