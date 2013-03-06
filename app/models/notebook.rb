class Notebook < ActiveRecord::Base
  
  # associations
  belongs_to :pool
  belongs_to :location
  
  #validations
  attr_accessible :comment, :cpu, :location_id, :manufactor, :nb_name, :nb_type, :pool_id, :ram, :serial, :is_lent
  validates_presence_of :nb_name, :manufactor, :nb_type, :serial
  validates_uniqueness_of :nb_name, :serial
end
