require 'test_helper'

class AdminPostsTest < ActionDispatch::IntegrationTest
  def setup
    @admin = User.create(first_name: "Jerome",
                         last_name: "Baggins",
                         password: "torrance",
                         password_confirmation: "torrance",
                         admin: true,
                         email: "jerome@example.com")

    @user = User.create(first_name: "Jeffery",
                        last_name: "Smith",
                        password: "Oceanside",
                        password_confirmation: "Oceanside",
                        admin: false,
                        email: "jeffery@example.com")

  end

  test "user must be admin in order to post" do
    post user_session_path, user: {first_name: "Jerome",
                                   last_name: "Baggins",
                                   password: "torrance",
                                   password_confirmation: "torrance",
                                   admin: true,
                                   email: "jerome@example.com"}
    get root_path
    assert_select 'a.btn', 'Blog'
    assert_select 'a.navbar-btn', "New Post"
  end

  test "only admin user can post" do
    post user_session_path, user: {first_name: "Jeffery",
                                   last_name: "Smith",
                                   password: "Oceanside",
                                   password_confirmation: "Oceanside",
                                   admin: false,
                                   email: "jeffery@example.com"}
    get root_path
    assert_select 'a.btn', 'Blog'
  end

  test "only admin user can edit posts" do
    post user_session_path, user: {first_name: "Jerome",
                                   last_name: "Baggins",
                                   password: "torrance",
                                   password_confirmation: "torrance",
                                   admin: true,
                                   email: "jerome@example.com"}
    get posts_path post: 1
    assert_select
  end
end
