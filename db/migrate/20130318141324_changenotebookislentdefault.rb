class Changenotebookislentdefault < ActiveRecord::Migration
  def change
    change_column :notebooks, :is_lent, :boolean, :default => false
  end

end
