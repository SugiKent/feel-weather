class SessionsController < ApplicationController
  before_action :login_required
  private
  def login_required
    if current_user.blank?
      redirect_to root_path, notice: 'ログインが必要です。'
    end
  end
end
