class CreatePlayerWorlds < ActiveRecord::Migration
  def change
    create_table :player_worlds do |t|
      t.references :player, index: true
      t.references :world, index: true
      t.datetime :time_changed

      t.timestamps
    end
  end
end
