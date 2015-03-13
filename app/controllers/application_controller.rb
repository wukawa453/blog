class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include ApplicationHelper
  protect_from_forgery with: :exception
  before_action :setup

  def setup
    # archive
    @posts_months = Post.all.order('created_at DESC').group_by { |post| post.created_at.beginning_of_month }
  end
end
