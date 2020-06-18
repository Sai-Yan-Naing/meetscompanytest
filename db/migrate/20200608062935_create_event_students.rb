class CreateEventStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :event_students do |t|
      t.integer :status

      t.timestamps
    end
  end
end
