require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    #Christopher Wu post
    @post = Post.new(title:"asdfdsa", body: "asdfdsa", user_id: 1)
  end

  test "initial setup Post is valid" do
    assert @post.valid?
  end
  test "Post must have valid title" do
    @post.title = "   "
    assert_not @post.valid?
  end

  test "Post must have valid body" do
    @post.body = ""
    assert_not @post.valid?
  end

  test "Post must have title of at least 5 chars" do
    @post.title = "asdf"
    assert_not @post.valid?
  end

  test "Post must have valid user model attached" do
    assert_equal @post.user_id, 1
  end
end
