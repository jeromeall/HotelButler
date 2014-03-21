class AddVacantStatusToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :vacant_stat, :boolean
  end
end
