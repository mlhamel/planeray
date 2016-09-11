class ChangeEventsAddReferenceToPlanes < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :plane, index: true
  end
end
