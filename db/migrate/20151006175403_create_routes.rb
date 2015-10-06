class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.string :number
      t.string :abbreviation
      t.string :direction
      t.string :color
      t.text :stations

      t.timestamps null: false
    end
  end
end
