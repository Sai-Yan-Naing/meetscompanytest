class AddSchoolDepartmentToStudent < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :school_department, null: false, foreign_key: true
  end
end
