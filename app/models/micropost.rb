class Micropost < ApplicationRecord
    belongs_to :user
	validates :content, length: {maximum: 12}, presence: true

end
