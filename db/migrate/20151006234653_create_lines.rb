class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :name
      t.string :number
      t.string :abbreviation
      t.string :direction
      t.string :color
      t.text :stations
      t.string :slug

      t.timestamps null: false
    end
  end
end
