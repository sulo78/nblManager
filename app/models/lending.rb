class Lending < ActiveRecord::Base
  attr_accessible :accessories, :comment, :department, :lender_name, :lender_phone, :lender_surname, :notebook_id, :room_nr, :user_id
end
