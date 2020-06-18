class AddEventToImgStorage < ActiveRecord::Migration[6.0]
  def change
    add_reference :img_storages, :event, null: false, foreign_key: true
  end
end
