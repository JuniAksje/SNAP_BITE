class ConversationController < ApplicationController

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end
