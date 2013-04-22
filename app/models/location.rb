class Location < ActiveRecord::Base
  has_many :notebooks
  attr_accessible :loc_acronym
  validates_presence_of :loc_acronym, :message => "sollte schon eingetragen werden! o.O"
  validates_uniqueness_of :loc_acronym
end
