class CreateBlogPosts < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'

    create_table :blog_posts, id: :uuid do |t|
      t.timestamps null: false

      t.string :title, null: false, unique: true
      t.text :body, null: false
      t.string :author_name, null: false
    end
  end
end
