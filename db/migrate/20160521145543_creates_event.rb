class CreatesEvent < ActiveRecord::Migration
  def up
    create_table :events do |t|
      t.string :flight
      t.decimal :latitude
      t.decimal :longitude
      t.integer :altitude
      t.string :hex
      t.integer :speed
      t.string :track
      t.timestamps null: false
    end
  end

  def down
    drop_table :events
  end
end
