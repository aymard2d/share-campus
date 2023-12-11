class ChangeTypeToCategory < ActiveRecord::Migration[7.1]
  def change
    rename_column :events, :type, :category
  end
end
