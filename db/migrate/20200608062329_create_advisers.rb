class CreateAdvisers < ActiveRecord::Migration[6.0]
  def change
    create_table :advisers do |t|
      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana
      t.string :sex
      t.string :email
      t.integer :team
      t.string :status
      t.string :img_I
      t.string :img_s
      t.string :birthplace
      t.string :university
      t.string :faculty
      t.text :hobby
      t.text :sports_history
      t.text :personal_summary
      t.text :personal_goals
      t.text :memories
      t.text :message_summary
      t.text :message

      t.timestamps
    end
  end
end
