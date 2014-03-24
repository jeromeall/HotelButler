class CreateConcierges < ActiveRecord::Migration
  def change
    create_table :concierges do |t|
      t.belongs_to :stay, index: true
      t.string :event
      t.integer :num_party
      t.datetime :event_date
      t.text :details

      t.timestamps
    end
  end
end
