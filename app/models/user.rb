class User < ActiveRecord::Base

  #Use salt hash for password, needs gem 'bcrypt-ruby'
  has_secure_password 

  #Accessible attributes
  attr_accessible :password, :password_confirmation, :username
  
  #Validations
  validates_presence_of :username, :password
  validates_uniqueness_of :username 
  
end
