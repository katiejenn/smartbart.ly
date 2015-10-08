class CreateLineTimes < ActiveRecord::Migration
  def change
    create_table :line_times do |t|

      t.timestamps null: false
      t.references :line
      t.references :orig_time
    end
  end
end
