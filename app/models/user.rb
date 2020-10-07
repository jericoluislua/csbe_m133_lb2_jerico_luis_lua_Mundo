class User < ApplicationRecord
  validates_presence_of :firstName, message: " can't be left empty."
  validates_presence_of :lastName, message: " can't be left empty."
  validates_presence_of :email, message: " can't be left empty."
  validates_uniqueness_of :email, message: " already taken."
  validates_format_of :email, with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Isn't email."
  has_secure_password
  validates_presence_of :password_confirmation, message: " can't be left empty."
end
