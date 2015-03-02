# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  stars      :integer
#  title      :string
#  commentary :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  
   def setup
        @review = Review.new(stars: 4, title: "Queen", commentary: "ABC")
   end

   test "Entered values should be valid" do
     assert @review.valid?
   end

# Start of validation for "Movie Rating"
 test "stars should be present" do
    @review.stars = ""
    assert_not @review.valid?
  end

  test "stars should not be invalid" do
    @review.stars = 6
    assert_not @review.valid?
  end

  test "stars is valid" do
    @review.stars = 4
    assert @review.valid?
  end
# End of validation for "Movie Rating"

# Start of validation for "Movie Title"

test "title should be present" do
    @review.title = ""
    assert_not @review.valid?
  end

  test "title is 100 characters or less" do
      @review.title = "a" *100
      assert @review.valid?
    end

    test "title should be at most 100 characters" do
      @review.title = "a" *101
      assert_not @review.valid?
    end

# End of validation for "Movie Title"

# Start of validation for "Movie Commentary"

test "commentary should be present" do
    @review.commentary = ""
    assert_not @review.valid?
  end

    test "commentary is 10000 characters or less" do
      @review.commentary = "a" *10000
      assert @review.valid?
    end

    test "commentary should be at most 10000 characters" do
      @review.commentary = "a" *10001
      assert_not @review.valid?
   end
# End of validation for "Movie Commentary"




end
