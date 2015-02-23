require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.create(name:"Jeffery Jones", body:"Yo, Hi-Lux makes the best scopes evar!!", post_id:1)
  end

  test "should be valid" do
    assert @comment.valid?
  end
end
