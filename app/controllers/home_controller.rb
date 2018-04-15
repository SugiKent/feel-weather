class HomeController < ApplicationController
  def welcome
    if current_user.present?
      redirect_to settings_path
    end
  end
end
