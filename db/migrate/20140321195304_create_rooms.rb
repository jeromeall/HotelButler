class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.belongs_to :hotel, index: true
      t.integer :room_num

      t.timestamps
    end
  end
end
