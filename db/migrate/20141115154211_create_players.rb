class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :level
      t.boolean :promotion
      t.references :world, index: true
      t.references :vocation, index: true
      t.references :guild, index: true
      t.timestamps
    end
    add_index :players, :name, :unique => true
  end
end
