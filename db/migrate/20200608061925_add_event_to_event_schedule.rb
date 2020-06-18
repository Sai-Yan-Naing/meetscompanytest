class AddEventToEventSchedule < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_schedules, :event, null: false, foreign_key: true
  end
end
