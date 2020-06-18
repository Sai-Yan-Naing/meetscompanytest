class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.integer :type
      t.string :initails
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
