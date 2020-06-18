class CreateSchoolDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :school_departments do |t|
      t.string :name
      t.integer :status

      t.timestamps
    end
  end
end
