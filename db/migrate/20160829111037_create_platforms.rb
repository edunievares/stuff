class CreatePlatforms < ActiveRecord::Migration
  def
    create_table :platforms do |t|
      t.string :name
      t.string :company
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
