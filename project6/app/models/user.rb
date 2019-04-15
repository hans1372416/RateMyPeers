class User < ApplicationRecord
  has_many :word_responses
  has_many :courses
  has_many :groups
  has_many :scoreboards
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
