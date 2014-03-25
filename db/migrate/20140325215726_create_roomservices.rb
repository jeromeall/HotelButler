class CreateRoomservices < ActiveRecord::Migration
  def change
    create_table :roomservices do |t|
      t.belongs_to :stay, index: true
      t.text :instructions
      t.integer :total_price

      t.timestamps
    end
  end
end
