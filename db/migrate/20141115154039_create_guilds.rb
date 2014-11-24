class CreateGuilds < ActiveRecord::Migration
  def change
    create_table :guilds do |t|
      t.string :name
      t.references :world
      t.timestamps
    end

    add_index :guilds, :name, :unique => true
  end
end
