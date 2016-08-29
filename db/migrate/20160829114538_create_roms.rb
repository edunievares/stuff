class CreateRoms < ActiveRecord::Migration
  def change
    create_table :roms do |t|
      t.string :name
      t.integer :year
      t.string :company
      t.boolean :passed
      t.boolean :playing
      t.string :savefile
      t.string :comment

      t.timestamps
    end
  end
end
