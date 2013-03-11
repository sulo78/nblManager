class User < ActiveRecord::Base

  #Use salt hash for password, needs gem 'bcrypt-ruby'
  has_secure_password 

  #Accessible attributes
  attr_accessible :is_admin, :password_digest, :username
  
  #Validations
  validates_presence_of :username, :password_digest
  validates_uniqueness_of :username 
  
end
