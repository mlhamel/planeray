class CreatePlanes < ActiveRecord::Migration[5.0]
  def up
    create_table :planes do |t|
      t.string :flight
      t.timestamps null: false
    end
  end

  def down
    drop_table :planes
  end
end
