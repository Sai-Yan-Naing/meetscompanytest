class AddSchoolToSchoolDepartment < ActiveRecord::Migration[6.0]
  def change
    add_reference :school_departments, :school, null: false, foreign_key: true
  end
end
