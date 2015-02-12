require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	test "Title Presence Validation Check(Invalid)" do
		@movie = Movie.new(title: "", year: 1891)
		assert_not @movie.valid?
	end

	test "Title Presence Validation Check(Valid)" do
		@movie = Movie.new(title: "batman", year: 1891)
		assert @movie.valid?
	end

	test "Year Presence Validation Check(Invalid)" do
		@movie = Movie.new(title: "batman", year: nil)
		assert_not @movie.valid?
	end

	test "Year Presence Validation Check(Valid)" do
		@movie = Movie.new(title: "batman", year: 1891)
		assert @movie.valid?
	end

	test "Title Length Maximum Length <= 100 (length=104)" do
		@movie = Movie.new(title: "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz", year: 1891)
		assert_not @movie.valid?
	end

	test "Title Length Maximum Length <= 100 (length = 26)" do
		@movie = Movie.new(title: "abcdefghijklmnopqrstuvwxyz", year: 1891)
		assert @movie.valid?
	end

	test "Year numericality greater than 1890(valid)" do
		@movie = Movie.new(title: "batman", year: 1890)
		assert @movie.valid?
	end

	test "Year numerically greater than or equal to 1890(valid)" do
		@movie = Movie.new(title: "batman", year: 1891)
		assert @movie.valid?
	end
	
	test "Year numericality greater than or equal to 1890(invalid)" do
		@movie = Movie.new(title: "batman", year: 1889)
		assert_not @movie.valid?
	end
end
