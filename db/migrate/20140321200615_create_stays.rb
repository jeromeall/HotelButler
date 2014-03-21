class CreateStays < ActiveRecord::Migration
  def change
    create_table :stays do |t|
      t.belongs_to :room, index: true
      t.belongs_to :guest, index: true
      t.datetime :checkin_date
      t.datetime :checkout_date
      t.string :res_num

      t.timestamps
    end
  end
end
