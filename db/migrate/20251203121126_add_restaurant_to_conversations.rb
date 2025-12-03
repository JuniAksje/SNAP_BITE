class AddRestaurantToConversations < ActiveRecord::Migration[7.1]
  def change
    add_reference :conversations, :restaurant, null: false, foreign_key: true
  end
end
