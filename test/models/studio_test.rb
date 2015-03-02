# == Schema Information
#
# Table name: studios
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  theater_id :integer
#

require 'test_helper'

class StudioTest < ActiveSupport::TestCase
    def setup
    @studio = Studio.new(name: "swaroop", address: "",
                     url: "")
  end

  test "should be valid" do
    assert @studio.valid?
  end

  test "name should be present" do
    @studio.name = "     "
    assert_not @studio.valid?, "name should not be null"
  end

  test "name should not be too long" do
    @studio.name = "a" * 51
    assert_not @studio.valid?, "name should not exceed 50 letters"
  end

  test "address should not be too long" do
    @studio.address = "a" * 101
    assert_not @studio.valid?, "address should not exceed 100 letters"
  end

  test "url should not be too long" do
    @studio.url = "a" * 81
    assert_not @studio.valid?, "url should not exceed 80 letters"
  end

end
