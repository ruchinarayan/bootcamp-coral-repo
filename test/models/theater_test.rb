# == Schema Information
#
# Table name: theaters
#
#  id              :integer          not null, primary key
#  theater_name    :string
#  theater_address :string
#  theater_phone   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  Task done by Mfshamim

require 'test_helper'

class TheaterTest < ActiveSupport::TestCase
	def setup
		@theater = Theater.new(theater_name: "Malco", theater_address: "898 Central Ave Memphis TN 38138", theater_phone: "9014551811")
		
    end
		 test "should be valid" do
	     	assert @theater.valid?
		 end

		test "Theater name should be present" do
	    	@theater.theater_name = "   "
	    	assert_not @theater.valid?
		end
	
		test "Theater name should be less than or equal to 50" do
	   		@theater.theater_name = "MalcoMalcoMalcoMalcoMalcoMalcoMalcoMalcoMalcoMalcoM"
	    	assert_not @theater.valid?
		end

		test "Theater address should be less than or equal to 100" do
	    	@theater.theater_address = "898 Central Ave Memphis TN 38138 898 Central Ave Memphis TN 38138 898 Central Ave Memphis TN 38138 8988888888"
	    	assert_not @theater.valid?
		end
			
		test "Theater phone number should be less than or equal to 20" do
	    	@theater.theater_phone = "90145518119014551811"
	    	assert @theater.valid?
		end

		# test "should be valid" do
	    # assert @theater.valid?
		# end
		
end