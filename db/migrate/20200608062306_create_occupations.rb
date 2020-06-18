class CreateOccupations < ActiveRecord::Migration[6.0]
  def change
    create_table :occupations do |t|
      t.string :name_bef
      t.string :name
      t.integer :status

      t.timestamps
    end
  end
end
