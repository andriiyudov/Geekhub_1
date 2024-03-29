class ProfilesController < ApplicationController
  before_action :current_profile, only: [:show, :edit, :update]

  def show
  end	

  def edit

  end
  
  def update
    if @profile.update_attributes(profile_params)
    	redirect_to profile_path(current_user.id)
    else
      render :edit
    end  	
  end

  private

  def current_profile
    @user = User.find(params[:id])
    @profile = @user.profile
  end	

  def profile_params
    params.require(:profile).permit(:country, :sex, :avatar)
  end	

end
