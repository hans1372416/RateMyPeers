class Group < ApplicationRecord

	has_many :students
	has_many :projects
	has_many :ratings
	has_many :word_responses

end
