class CreateVocations < ActiveRecord::Migration
  def change
    create_table :vocations do |t|
      t.string :name
      t.string :promotion_name

      t.timestamps
    end
  end
end
