require 'test_helper'

class AskingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  
  test "email should be present" do
    @asking.email = nil
    assert_not @asking.valid?
  end
end
