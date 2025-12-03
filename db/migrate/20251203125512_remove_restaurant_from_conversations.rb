class RemoveRestaurantFromConversations < ActiveRecord::Migration[7.1]
  def change
    remove_reference :conversations, :restaurant, null: false, foreign_key: true
  end
end
