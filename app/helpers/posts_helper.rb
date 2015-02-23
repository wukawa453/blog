module PostsHelper
  def full_name(user_id=0)
    if user_id > 0
      User.find(user_id).first_name + "\s" + User.find(user_id).last_name
    end
  end
end
