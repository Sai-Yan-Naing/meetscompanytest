class AddCompanyToEventCompany < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_companies, :company, null: false, foreign_key: true
  end
end
