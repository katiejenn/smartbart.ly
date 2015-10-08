class CreateOrigTimes < ActiveRecord::Migration
  def change
    create_table :orig_times do |t|
      t.time :value

      t.timestamps null: false
    end
  end
end
