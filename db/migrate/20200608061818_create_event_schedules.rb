class CreateEventSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :event_schedules do |t|
      t.string :name
      t.boolean :status
      t.datetime :start_date
      t.datetime :end_date
      t.integer :participation_limit_student
      t.integer :participation_limit_company
      t.string :comment
      t.integer :venue_area
      t.integer :venue_no
      t.string :venue_detail

      t.timestamps
    end
  end
end
