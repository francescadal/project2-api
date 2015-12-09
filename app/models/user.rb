#
class User < ActiveRecord::Base
  include Authentication
  has_secure_password
  has_many :comments
end
