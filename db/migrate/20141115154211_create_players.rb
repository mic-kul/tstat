class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :level
      t.boolean :promotion
      t.references :world, index: true
      t.references :vocation, index: true
      t.timestamps
    end
  end
end
