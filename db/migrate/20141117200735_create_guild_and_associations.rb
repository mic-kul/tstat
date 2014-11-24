class CreateGuildAndAssociations < ActiveRecord::Migration
  def change
    create_table :guilds do |t|
      t.string :name
      t.references :world
      t.timestamps
    end

    create_table :players_guilds, id: false do |t|
      t.belongs_to :player
      t.belongs_to :guild
      t.datetime :time_changed
    end
  end
end
