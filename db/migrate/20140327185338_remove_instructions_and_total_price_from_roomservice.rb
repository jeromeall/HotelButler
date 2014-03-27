class RemoveInstructionsAndTotalPriceFromRoomservice < ActiveRecord::Migration
  def change
    remove_column :roomservices, :instructions
    remove_column :roomservices, :total_price
  end
end
