class AdminController < ApplicationController

  before_action :basic_auth

  private
  def basic_auth
    authenticate_or_request_with_http_basic do |user,pass|
      # user == ENV["RIKKYO_APP_BASIC_NAME"] && pass == ENV["RIKKYO_APP_BASIC_PASSWORD"]
      user == ENV['BASIC_NAME'] && pass == ENV['BASIC_PASS']
    end
  end
end
