module PostsHelper
  def full_name(id='')
    if id
      User.find(id).first_name + "\s" + User.find(id).last_name
    end
  end
end
