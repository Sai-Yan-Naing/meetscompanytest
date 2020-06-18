class CreateEventCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :event_companies do |t|
      t.integer :status

      t.timestamps
    end
  end
end
