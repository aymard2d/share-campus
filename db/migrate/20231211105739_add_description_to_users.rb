class AddDescriptionToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :description, :string
  end
end
