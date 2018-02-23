class AddTagToBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_tags_posts, id: false do |t|
      t.belongs_to :post, index: true
      t.belongs_to :blog_tag, index: true
    end
  end
end
