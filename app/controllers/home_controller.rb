class HomeController < ApplicationController
  before_action :authenticate_user!, only: :thank
  def index
    @food_items = FoodItem.order('food_items.impressions_count DESC').limit(5)
  end

  def contact
  end

  def menu
    @sections = Section.all
    if params[:section].present?
      @current_section = Section.find_by_name(params[:section].capitalize)
      @food_items = params[:sort].present? ? 
        @current_section.sort_food_items(params[:sort]) : 
        @current_section.food_items
    end
  end

  def thank
  end

  private
    def paied?
      unless current_order.paied
        flash[:alert] = "Page not found"
        redirect_to root_path
      end
    end
end
