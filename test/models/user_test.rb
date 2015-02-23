require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(first_name:"Christopher", last_name:"Wu", email:"thathurtlikeagoose@gmail.com", password:"password", password_confirmation:"password" )
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "first name should be present" do
    @user.first_name = "    "
    assert_not @user.valid?
  end

  test "last name should be present" do
    @user.last_name = "    "
    assert_not @user.valid?
  end

  test "first name should not be too long" do
    @user.first_name = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a"*244+"@example.com"
    assert_not @user.valid?
  end

  test "last name should not be too long" do
    @user.last_name = "a" * 51
    assert_not @user.valid?
  end

  test "email should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address} should be valid"
    end
  end

  test "email should not accept valid addresses" do
    invalid_addresses = %w[user@example,com USER_at_foo.COM A_US-ER@foo. first.last@f alice+bob@bar+|||baz.cn]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address} should be valid"
    end
  end

  test "password should have minimum length of 8" do
      @user.password = @user.password_confirmation = "foobar"
      assert_not @user.valid?
  end

  test "email should be downcased when reloaded from memory" do
    mixed_case_email = "nigGAsInParIS@fooBAR.CN"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end

  test "email domains with consecutive dots should work" do
    @user.email="chriswu452@gmail..com"
    assert_not @user.valid?
  end
end
