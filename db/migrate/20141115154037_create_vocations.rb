class CreateVocations < ActiveRecord::Migration
  def change
    create_table :vocations do |t|
      t.string :name
      t.string :promotion_name

      t.timestamps
    end

    add_index :vocations, :name, :unique => true
    add_index :vocations, :promotion_name, :unique => true
  end
end
