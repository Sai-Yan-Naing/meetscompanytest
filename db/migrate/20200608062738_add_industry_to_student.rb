class AddIndustryToStudent < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :industry, null: false, foreign_key: true
  end
end
