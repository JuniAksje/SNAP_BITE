class MessagesController < ApplicationController
  SYSTEM_PROMPT = "Você é um assistente que recomenda restaurantes com base nos dados da aplicação. Responda em português, de forma curta e amigável. Use seu conhecimento geral para sugerir pelo menos 3 lugares fora do seed também."

  def create
    @conversation = current_user.conversations.find(params[:conversation_id])

    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user         = current_user
    @message.role         = "user"

    if @message.save

      # >>> AQUI muda: contexto com TODOS os restaurantes <<<
      restaurants_text = Restaurant.all.map do |r|
        "Cidade: #{r.city}\n#{r.content}"
      end.join("\n\n")

      context_text = "Esses são os restaurantes cadastrados na aplicação:\n\n#{restaurants_text}"
      instructions = SYSTEM_PROMPT + "\n\n" + context_text

      #chat     = RubyLLM.chat
      #response = chat.with_instructions(instructions).ask(@message.content)

        @chat     = RubyLLM.chat
        build_conversation_history
        response = @chat.with_instructions(instructions).ask(@message.content)

        @conversation.messages.create(role: "assistant", content: response.content, user: current_user)
        @conversation.generate_title_from_first_message

        redirect_to conversation_path(@conversation)
      else
        render "chats/show", status: :unprocessable_entity
    end
  end

  private

  def build_conversation_history
    @conversation.messages.each do |message|
    @chat.add_message(message)
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
