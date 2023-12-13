class CreateAmphis < ActiveRecord::Migration[7.1]
  def change
    create_table :amphis do |t|
      t.string :name

      t.timestamps
    end
  end
end
