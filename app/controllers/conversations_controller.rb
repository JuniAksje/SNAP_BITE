class ConversationsController < ApplicationController
  def index
    @conversations = current_user.conversations.order(created_at: :desc)
  end

  def show
    @conversation = current_user.conversations.find(params[:id])
    @messages     = @conversation.messages.order(:created_at)
    @message      = Message.new
  end

  def create
    @conversation = Conversation.create(user: current_user)
    redirect_to conversation_path(@conversation)
  end

  def destroy
    @conversation = current_user.conversations.find(params[:id])
    @conversation.destroy
    redirect_to conversations_path, notice: "Chat excluído com sucesso!"
  end
end
