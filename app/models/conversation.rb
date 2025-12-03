class Conversation < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy

  def generate_title_from_first_message
    return if title.present?

    first_message = messages.order(:created_at).first
    return unless first_message

    update(title: first_message.content.to_s[0, 50])
  end
end
