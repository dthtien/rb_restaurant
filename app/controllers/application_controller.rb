class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
    def current_order
      Order.create_or_find_order(session[:order_id])
    end

    helper_method :current_order
    
end
