class AddDefaultToFriendshipsStatus < ActiveRecord::Migration[7.1]
  def change
    def change
      change_column :friendships, :status, :string, default: 'en attente'
    end
  end
end
