class CreateOrigTimes < ActiveRecord::Migration
  def change
    create_table :orig_times do |t|
      t.time :value
      t.integer :station_id
      t.integer :line_number

      t.timestamps null: false
    end
  end
end
