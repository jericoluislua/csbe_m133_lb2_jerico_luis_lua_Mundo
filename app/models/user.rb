class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email, message: " can't be left empty."
  validates_uniqueness_of :email, message: " already taken."
end
