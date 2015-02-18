require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user must have valid email address" do
    user = User.new
    user.email = "thathurtlikeagoose"
    assert_not user.valid?
  end
end
