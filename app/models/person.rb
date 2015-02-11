# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  dob        :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
# Task done by cpchmpll

class Person < ActiveRecord::Base
	
	validates :first_name, allow_blank: true, length: {maximum: 50}
	validates :last_name, length: {maximum: 50}, presence: true
	validates_inclusion_of :dob, :in => Date.new(1890,1,1)..Date.current, presence:true
	#validates :validatedate


#	def validatedate

	# if Date.parse(dob) > Date.today || Date.parse(dob)< Date.parse("01/01/1890")
	 #	errors.add(:dob, "Date should not be more than current date or less than 01/01/1890")
	 #end
#	end
	##
end
