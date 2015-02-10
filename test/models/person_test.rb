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
#

require 'test_helper'

class PersonTest < ActiveSupport::TestCase
	

	def setup
    @person = Person.new(first_name: "chaitanya", last_name: "pochampally", dob: Date.new(1989,1,1))
    end
        test "first name should be maximum of 50 characters" do
           @person.first_name="chaitanyachaitanyachaitanyachaitanyachaitanyachaitanya"       
            assert_not @person.valid?
        end
        test "last name should be maximum of 50 characters" do
        	@person.first_name="chaitanyachaitanyachaitanyachaitanyachaitanyachaitanya"       
        	   assert_not @person.valid?
        end
         test "last name must be present" do
        	@person.last_name=" "       
        	   assert_not @person.valid?
        end
        
         test "first name can be blank" do
        	@person.first_name=" "       
        	   assert @person.valid?
        end
        test "dob must be present" do
        	@person.dob=" "       
        	   assert_not @person.valid?
        end
        test "dob must be in between Jan 1,1890 and current date" do
        	@person.dob=Date.new(1890,1,1)       
        	   assert @person.valid?
        end
        #test "dobtest" do
          #  assert @person.valid?
        #end
end
