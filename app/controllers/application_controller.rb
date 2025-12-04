class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_restaurants
  before_action :set_restaurants_sidebar

  private

  def set_restaurants
    @restaurants = Restaurant.all
  end

  def set_restaurants_sidebar
    @city_backgrounds = {
    "São Paulo" => "sao_paulo.jpg",
    "Rio de Janeiro" => "rio.jpg",
    "Belo Horizonte" => "bh.jpg",
    "Salvador" => "salvador.jpg",
    "Porto Alegre" => "porto_alegre.jpg",
    "Recife" => "recife.jpg",
    "Fortaleza" => "fortaleza.jpg",
    "Curitiba" => "curitiba.jpg",
    "Manaus" => "manaus.jpg",
    "Brasília" =>"brasilia.jpg"
    }
  end
end
