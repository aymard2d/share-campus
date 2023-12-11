class AddFriendIdToFriendships < ActiveRecord::Migration[7.1]
  def change
    add_reference :friendships, :friend, foreign_key: { to_table: "users" }
  end
end
