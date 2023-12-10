class CreateFriends < ActiveRecord::Migration[7.1]
  def change
    create_table :friends do |t|
      t.references :user, null: false, foreign_key: true
      t.references :friend, null: false, foreign_key: true
      t.string :nickname

      t.timestamps
    end
  end
end
