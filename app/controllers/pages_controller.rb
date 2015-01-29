class PagesController < ApplicationController

  def index
    @user = User.find(1)
    @user_zombie = User.find(2)
    @api = Api.new(@user).activities_today
    @api_zombie = Api.new(@user_zombie).activities_today
  end

end
