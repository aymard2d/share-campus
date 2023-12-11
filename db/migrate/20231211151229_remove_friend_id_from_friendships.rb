class RemoveFriendIdFromFriendships < ActiveRecord::Migration[7.1]
  def change
    remove_reference :friendships, :friend, foreign_key: true
  end
end
