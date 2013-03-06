class CreateNotebooks < ActiveRecord::Migration
  def change
    create_table :notebooks do |t|
      t.string :manufactor
      t.string :nb_type
      t.string :serial
      t.string :nb_name
      t.string :cpu
      t.integer :ram
      t.text :comment
      t.boolean :is_lent, default: false
      t.integer :pool_id
      t.integer :location_id

      t.timestamps
    end
  end
end
