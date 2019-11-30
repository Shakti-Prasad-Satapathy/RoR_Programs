class WelcomeController < ApplicationController
  def index
    @user = User.all
    #@image = User.new(image_params)
    #@id = params[:id]
    #@images = USer.find(@id)
  end

  #def profile
  #  @users = Note.where(user_id: current_user)
  #end

  #private
  #def image_params
  #  params.require(:image).permit(:image)
  #end
end
