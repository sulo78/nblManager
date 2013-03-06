class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :pool_name

      t.timestamps
    end
  end
end
