class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :num_rooms
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
