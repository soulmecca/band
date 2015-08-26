class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :genre
      t.boolean :explicit_lyric, :default => false

      t.timestamps null: false
    end
  end
end
