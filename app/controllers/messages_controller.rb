class MessagesController < ApplicationController
  SYSTEM_PROMPT = "Estou em uma cidade, com fome e quero buscar um restaurante para comer"

  def create
    @conversation = current_user.conversations.find(params[:conversation_id])
    restaurant = @conversation.restaurant

    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user = current_user

    if @message.save
      @conversation.generate_title_from_first_message

    else
      render 'conversations/show', status: :unprocessable_entity
    end
  end

  private

   def restaurant_context
    "Here is the context of the challenge: #{@restaurant.content}."
  end

  def instructions
    [SYSTEM_PROMPT, challenge_context, @restaurant.system_prompt].compact.join("\n\n")
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
