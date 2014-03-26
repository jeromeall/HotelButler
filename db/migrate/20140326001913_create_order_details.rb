class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.belongs_to :roomservice, index: true
      t.belongs_to :menu_item, index: true

      t.timestamps
    end
  end
end
