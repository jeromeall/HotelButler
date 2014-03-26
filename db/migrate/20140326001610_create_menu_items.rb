class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.belongs_to :hotel, index: true
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
