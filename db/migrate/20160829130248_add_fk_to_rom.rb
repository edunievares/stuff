class AddFkToRom < ActiveRecord::Migration
  def change
    add_column :roms, :platform_id, :integer
    add_column :roms, :genre_id, :integer

    add_foreign_key :roms, :platforms
    add_foreign_key :roms, :genres
  end
end
