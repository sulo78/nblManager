class Lending < ActiveRecord::Base

# A lending has one Notebook 
  belongs_to :notebook
  
# Accessible attributes
  attr_accessible :accessories, :comment, :department, :lender_name, :lender_phone, :lender_surname, :notebook_id, :room_nr, :user_id, :lending_start, :lending_end
end
