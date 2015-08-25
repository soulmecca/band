class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :genre
      t.boolean :explicit_lyric

      t.timestamps null: false
    end
  end
end
