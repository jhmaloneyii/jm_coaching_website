class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags

  validates :title, :content, presence: true

  mount_uploader :image, BlogImageUploader
end
