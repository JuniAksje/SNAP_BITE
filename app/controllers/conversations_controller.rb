class ConversationsController < ApplicationController

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])

    @conversation = Conversation.new
    @conversation.user = current_user
    @conversation.restaurant = @restaurant

    @chat.save!

    redirect_to conversation_path(@conversation)
  end
end
