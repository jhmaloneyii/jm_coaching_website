class Post < ActiveRecord::Base
  has_and_belongs_to_many :blog_tags

  validates :title, :content, presence: true
end
