class CreateImgStorages < ActiveRecord::Migration[6.0]
  def change
    create_table :img_storages do |t|
      t.string :category
      t.string :img
      t.string :tag

      t.timestamps
    end
  end
end
