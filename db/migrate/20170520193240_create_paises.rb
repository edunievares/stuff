class CreatePaises < ActiveRecord::Migration
  def change
    create_table :paises do |t|
      t.string :name

      t.timestamps
    end
  end
end
