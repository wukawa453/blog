class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
  validates :user_id, presence: true
  has_attached_file :post_image, :styles=> {:default => "600x300>", :medium => "300x300>", :thumb=>"100x100>"},
                    :url => "/assets/posts/:id/:style/:basename.:extension",
                    :path => "/:rails_root/public/assets/posts/:id/:style/:basename.:extension"
  validates_attachment_presence :post_image
  validates_attachment_size :post_image, :less_than => 5.megabytes
  validates_attachment_content_type :post_image, :content_type => /\Aimage\/.*\Z/
end
