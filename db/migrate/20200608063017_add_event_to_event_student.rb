class AddEventToEventStudent < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_students, :event, null: false, foreign_key: true
  end
end
