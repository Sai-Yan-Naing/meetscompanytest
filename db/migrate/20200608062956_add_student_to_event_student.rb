class AddStudentToEventStudent < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_students, :student, null: false, foreign_key: true
  end
end
