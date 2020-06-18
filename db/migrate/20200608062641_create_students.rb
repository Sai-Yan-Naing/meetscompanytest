class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.integer :status
      t.string :email1
      t.string :encrypted_password
      t.datetime :temp_registration_date
      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_lana
      t.datetime :main_registration_date
      t.string :email2
      t.string :postal_code
      t.integer :prefectures_code
      t.string :address1
      t.string :address2
      t.string :tel_main
      t.string :tel_sub
      t.integer :sex
      t.integer :school_type
      t.string :school_name
      t.string :department_name
      t.integer :faculty_type
      t.integer :graduation_date
      t.integer :desired_work_region_code
      t.boolean :club_flg
      t.string :school_club_name
      t.integer :school_club_type
      t.string :club_name
      t.string :lab_name
      t.string :major_field
      t.string :research_subject_title
      t.text :research_subject_summary
      t.text :interested_companies
      t.text :personal_summary
      t.integer :how_known
      t.string :how_known_other
      t.boolean :mail_magazine_flg

      t.timestamps
    end
  end
end
