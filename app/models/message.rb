class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user, optional: true
end
