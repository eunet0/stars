class Star < ApplicationRecord
	belongs_to :category, optional: true
	validates :name, :bio, :category, presence: true
end
