class PagesController < ApplicationController
  def home
  end

  def ask
    @question = params[:question]

    @answer = "Essa seria a resposta da IA para: #{@question}"

    render :home
  end
end
