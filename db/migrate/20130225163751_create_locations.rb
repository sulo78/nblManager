class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :loc_acronym

      t.timestamps
    end
  end
end
