class CreateHousekeepings < ActiveRecord::Migration
  def change
    create_table :housekeepings do |t|
      t.belongs_to :stay, index: true
      t.text :request

      t.timestamps
    end
  end
end
