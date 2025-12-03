class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_restaurants

  private

  def set_restaurants
    @restaurants = Restaurant.all
  end
end
