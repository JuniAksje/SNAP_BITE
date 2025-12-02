class Conversation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :messages
end
