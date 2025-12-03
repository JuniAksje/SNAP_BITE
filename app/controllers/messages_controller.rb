class MessagesController < ApplicationController
  SYSTEM_PROMPT = "Você é um assistente que recomenda restaurantes com base nos dados da aplicação. Responda em português, de forma curta e amigável. Use seu conhecimento geral para sugerir pelo menos 3 lugares fora do seed também."

  def create
    @conversation = current_user.conversations.find(params[:conversation_id])

    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user         = current_user
    @message.role         = "user"

    if @message.save
      @conversation.generate_title_from_first_message

      # >>> AQUI muda: contexto com TODOS os restaurantes <<<
      restaurants_text = Restaurant.all.map do |r|
        "Cidade: #{r.city}\n#{r.content}"
      end.join("\n\n")

      context_text = "Esses são os restaurantes cadastrados na aplicação:\n\n#{restaurants_text}"
      instructions = SYSTEM_PROMPT + "\n\n" + context_text

      chat     = RubyLLM.chat
      response = chat.with_instructions(instructions).ask(@message.content)

      Message.create!(
        conversation: @conversation,
        user:         current_user,
        role:         "assistant",
        content:      response.content
      )

      redirect_to conversation_path(@conversation)
    else
      @messages = @conversation.messages.order(:created_at)
      render "conversations/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
