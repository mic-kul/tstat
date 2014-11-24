class CreatePlayerNames < ActiveRecord::Migration
  def change
    create_table :player_names do |t|
      t.string :name
      t.datetime :time_changed
      t.references :player, index: true

      t.timestamps
    end
  end
end
