class CreateRoms < ActiveRecord::Migration
  def up
    create_table :roms do |t|
      t.string :name
      t.integer :year
      t.string :company
      t.boolean :passed
      t.boolean :playing
      t.string :savefile
      t.integer :platform, :references => [:platforms, :id]
      t.integer :genre, :references => [:genre, :id]
      t.string :comment

      t.timestamps
    end
  end

  def sown
    drop_table :roms
  end
end
