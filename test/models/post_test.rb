require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "Post must have valid title" do
    post = Post.new(title:"  ", body: "asdfdsa")
    assert_not post.valid?
  end

  test "Post must have valid body" do
    post = Post.new(title: "The first post", body: "")
    assert_not post.valid?
  end

  test "Post must have title of at least 5 chars" do
    post = Post.new(title:"post", body:"asdfdsa")
    assert_not post.valid?
  end
end
