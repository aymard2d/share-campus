class AddBatchToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :batch, :string
  end
end
