class Group < ApplicationRecord
	has_many :memberships
	has_many :ratings
	has_many :users, :through => :memberships
	belongs_to :course
end
