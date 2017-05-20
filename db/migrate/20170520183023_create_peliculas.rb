class CreatePeliculas < ActiveRecord::Migration
  def change
    create_table :peliculas do |t|
      t.string :name
      t.string :director
      t.integer :year
      t.string :country

      t.timestamps
    end
  end
end
