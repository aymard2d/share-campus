class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :starting_date
      t.time :starting_time
      t.date :ending_date
      t.time :ending_time
      t.string :created_by
      t.string :description

      t.timestamps
    end
  end
end
