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
    @conversation = Conversation.create!(user: current_user)
    redirect_to conversation_path(@conversation)
  end
>>>>>>> c6faf136ba927ae70165d6828887da18c886b484
end
