class HomeController < ApplicationController
  before_action :authenticate_user!, only: :thank
  before_action :paied?, only: :thank
  def index
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
