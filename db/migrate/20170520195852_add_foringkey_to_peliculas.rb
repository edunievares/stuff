class AddForingkeyToPeliculas < ActiveRecord::Migration
  def change
    change_table :peliculas do |t|
      t.rename :pais_id, :paise_id
    end
    add_foreign_key :peliculas, :paises
  end
end
