require 'test_helper'

class SignUpTest < ActionDispatch::IntegrationTest

  test "invalid email sign-up" do
    get new_user_registration_path
    assert_no_difference 'User.count' do
      post user_registration_path, user: {first_name: 'Christopher',
                                          last_name: 'Wu',
                                          email: 'chris@hi-lux',
                                          password:'password',
                                          password_confirmation: 'password'}
    end
    assert_template 'devise/registrations/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'
    assert_select 'li', 'Email is invalid'
  end

  test "invalid sign-up with empty fields" do
    get new_user_registration_path
    assert_no_difference 'User.count' do
      post user_registration_path, user: {first_name: '',
                                          last_name: '   ',
                                          email: '      ',
                                          password:'     ',
                                          password_confirmation: '     '}
    end
    assert_template 'devise/registrations/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'
    assert_select 'li', "First name can't be blank"
    assert_select 'li', "Last name can't be blank"
    assert_select 'li', 'Email is invalid'
    assert_select 'li', "Email can't be blank"
    assert_select 'li', "Password can't be blank"
    assert_select 'li', "Password is too short (minimum is 8 characters)"
  end
end
