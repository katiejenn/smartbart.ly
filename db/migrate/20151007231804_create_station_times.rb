class CreateStationTimes < ActiveRecord::Migration
  def change
    create_table :station_times do |t|

      t.timestamps null: false
      t.references :station
      t.references :orig_time
    end
  end
end
