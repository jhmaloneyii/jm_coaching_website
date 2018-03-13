class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags

  validates :title, :content, presence: true
  validates :summary, length: {maximum: 200}

  mount_uploader :image, BlogImageUploader
end
