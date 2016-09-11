class AddsIndexToPlaneFlight < ActiveRecord::Migration[5.0]
  def change
    add_index :planes, :flight, unique: true
  end
end
