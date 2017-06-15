class HomeController < ApplicationController
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
end
