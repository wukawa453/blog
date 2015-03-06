class AddSearchIndexToPosts < ActiveRecord::Migration
  def up
    execute "create index post_title on posts using gin(to_tsvector('english', title))"
    execute "create index post_body on posts using gin(to_tsvector('english', body))"
  end
  def down
    execute "drop index post_title"
    execute "drop index post_body"
  end
end
