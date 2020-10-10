class Contact < ApplicationRecord
  validates_presence_of :firstName, message: " can't be left empty."
  validates_presence_of :lastName, message: " can't be left empty."
  validates_presence_of :email, message: " can't be left empty."
  #Got the regex from: https://emailregex.com/
  validates_format_of :email, with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: " not valid."
  validates_presence_of :subject, message: " can't be left empty."
  validates_presence_of :message, message: " can't be left empty."
end