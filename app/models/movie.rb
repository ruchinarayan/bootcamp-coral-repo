class Movie < ActiveRecord::Base
	validates :title, :year, presence: true
	validates :title, length: { maximum: 100 }
	validates :year, numericality: { greater_than_or_equal_to: 1890 }
	belongs_to :studio,  #Name of the methods(rolename in class diagram)
	class_name: "Studio", # Name of other class
	foreign_key: "studio_id" # Name of foreign key
end
