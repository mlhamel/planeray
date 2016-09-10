class AddsLastSeenToEvents < ActiveRecord::Migration[5.0]
  def change
    change_table :events do |t|
      t.datetime :last_seen
    end
  end
end
