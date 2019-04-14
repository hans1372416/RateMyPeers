class WordResponse < ApplicationRecord
	  # validates :q1, presence: true
	  # validates :q2, presence: true
	  # validates :q3, presence: true
	  belongs_to :user
	  # belongs_to :group

end
