class Student < ApplicationRecord
   before_save { self.username = username.downcase }
   validates :name, presence: true, length: { maximum: 20 }
   VALID_USERNAME_REGEX = /[a-z]+[.]\d+/i
   validates :username, presence: true, length: { maximum: 50 }, format: { with: VALID_USERNAME_REGEX } ,uniqueness: true

   has_secure_password
   validates :password, presence: true, length: { minimum: 6 }
end
