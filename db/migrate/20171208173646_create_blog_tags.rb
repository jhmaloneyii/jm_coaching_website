class CreateBlogTags < ActiveRecord::Migration
  def change
    create_table :blog_tags do |t|
      t.string :tag_name

      t.timestamps null: false
    end
  end
end
