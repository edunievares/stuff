class AddPaisesToPeliculas < ActiveRecord::Migration
  def change
    add_reference :peliculas, :pais, index: true
    remove_column :peliculas, :country, :string
  end
end
