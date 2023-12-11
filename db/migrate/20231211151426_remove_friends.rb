class RemoveFriends < ActiveRecord::Migration[7.1]
  def change
    drop_table :friends
  end
end
