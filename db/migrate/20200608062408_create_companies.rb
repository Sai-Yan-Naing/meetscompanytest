class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :status
      t.string :ceo_name
      t.string :postal_code
      t.string :address
      t.string :tel
      t.string :fax
      t.string :url
      t.string :img_main
      t.string :staff_name
      t.string :staff_name_kana
      t.string :staff_emails
      t.boolean :public_flg_student
      t.boolean :ad_flg
      t.text :publish_flg_contact
      t.text :business_content
      t.string :business_img1
      t.string :business_img2
      t.text :charm
      t.string :cherm_img1
      t.string :charm_img2
      t.text :company_data
      t.text :contact
      t.integer :qualification
      t.string :recruitment_type
      t.integer :recuitment_industry
      t.integer :recuritment_occapation
      t.integer :recuritment_prefectures
      t.text :ideal_candidate_profile
      t.text :recuritment_data
      t.boolean :featured_companies

      t.timestamps
    end
  end
end
