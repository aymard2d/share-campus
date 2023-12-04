class AddRatingToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :rating, :integer
  end
end
