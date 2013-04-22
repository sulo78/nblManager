class Pool < ActiveRecord::Base
  has_many :notebooks
  attr_accessible :pool_name
  validates_presence_of :pool_name, :message => "sollte schon eingetragen werden! o.O "
  validates_uniqueness_of :pool_name
end
