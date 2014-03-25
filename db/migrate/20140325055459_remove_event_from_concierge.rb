class RemoveEventFromConcierge < ActiveRecord::Migration
  def change
    remove_column :concierges, :event
    add_column :concierges, :event_type, :string
  end
end
