class AddTypeToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :type, :string
  end
end
