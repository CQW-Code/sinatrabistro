class CreateApps < ActiveRecord::Migration[5.1]
  def self.up
    create_table :apps do |t|
      t.string :item
      t.string :price
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
