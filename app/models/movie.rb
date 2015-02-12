class Movie < ActiveRecord::Base
	validates :title, :year, presence: true
	validates :title, length: { maximum: 100 }
	validates :year, numericality: { greater_than_or_equal_to: 1890 }
end
