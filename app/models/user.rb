class User < ActiveRecord::Base
  attr_accessible :is_admin, :password_digest, :username
end
