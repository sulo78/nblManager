class Lending < ActiveRecord::Base

# A lending has a Notebook 
  belongs_to :notebook
  
# A lending has a User 
  belongs_to :user
  
# Accessible attributes
  attr_accessible :accessories, :comment, :department, :lender_name, :lender_phone, :lender_surname, :notebook_id, :room_nr, :user_id, :lending_start, :lending_end
validates_presence_of :lending_start, :lending_end, :lender_name, :lender_surname


end
