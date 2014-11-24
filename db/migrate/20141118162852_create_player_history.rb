class CreatePlayerHistory < ActiveRecord::Migration
  def change
    create_table :player_histories do |t|
      t.references :player, :index => true

      t.integer :year
      t.integer :month
      t.integer :day

      t.integer :online

      t.integer :level
      t.integer :level_min
      t.integer :level_max
    end
  end
end
