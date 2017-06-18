class HomeController < ApplicationController
  before_action :authenticate_user!, only: :thank
  before_action :paied?, only: :thank
  def index
  end

  def contact
  end

  def menu
    @sections = Section.all
    if params[:section_id].present?
      @current_section = Section.find(params[:section_id])
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
