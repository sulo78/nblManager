class Notebook < ActiveRecord::Base
  
# A Notebook has one Pool
  belongs_to :pool
  
# A Notebook has one Location
  belongs_to :location
  
# A Notebook has a lot of lendings
  has_many :lendings
  
#validations
  attr_accessible :comment, :cpu, :location_id, :manufactor, :nb_name, :nb_type, :pool_id, :ram, :serial, :is_lent
  validates_presence_of :nb_name, :manufactor, :nb_type, :serial, :location, :pool
  validates_uniqueness_of :nb_name, :serial
end
