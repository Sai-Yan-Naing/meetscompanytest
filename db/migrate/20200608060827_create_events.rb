class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.boolean :status
      t.integer :display_order
      t.date :display_from
      t.date :display_to
      t.text :summary_html
      t.text :content_html
      t.integer :held_year

      t.timestamps
    end
  end
end
