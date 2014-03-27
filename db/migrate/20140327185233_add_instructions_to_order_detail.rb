class AddInstructionsToOrderDetail < ActiveRecord::Migration
  def change
    add_column :order_details, :instructions, :text
  end
end
