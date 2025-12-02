class PagesController < ApplicationController
  def home
  end

  def ask
    @question = params[:question]
  end
end
