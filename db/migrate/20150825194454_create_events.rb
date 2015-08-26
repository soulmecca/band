class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :date
      t.boolean :alcohol_served, :default => true
      t.integer :group_id
      t.integer :venue_id

      t.timestamps null: false
    end
  end
end
