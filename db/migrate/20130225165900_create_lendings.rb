class CreateLendings < ActiveRecord::Migration
  def change
    create_table :lendings do |t|
      t.string :lender_name
      t.string :lender_surname
      t.string :lender_phone
      t.string :department
      t.string :room_nr
      t.text :accessories
      t.text :comment
      t.integer :notebook_id
      t.integer :user_id

      t.timestamps
    end
  end
end
