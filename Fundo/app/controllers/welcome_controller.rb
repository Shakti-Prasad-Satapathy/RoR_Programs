class WelcomeController < ApplicationController
  def index
  end

  def profile
    @users = Note.where(user_id: current_user)
  end
end
