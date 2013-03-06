class AddLenndingStartToLendings < ActiveRecord::Migration
  def change
    add_column :lendings, :lending_start, :datetime
    add_column :lendings, :lending_end, :datetime
  end
end
