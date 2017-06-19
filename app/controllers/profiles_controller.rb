class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_profile
  before_action :owner?, only: [:edit, :update]

  def edit
    current_order.paied = true
    current_user.orders << current_order
  end

  def update
    if @profile.update(profile_params)
      flash[:notice] = "Thankyou for your order"
      session[:order_id] = nil
      redirect_to thank_path
    else
      flash[:alert] = "Can not update your information"
      render :edit
    end
  end

  private
    def find_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:name, :phone_number, :address)
    end

    def owner?
      unless current_user.owner?(@profile)
        flash[:alert] = "You have no permitsion!"
        redirect_to root_path
      end 
    end
end
