class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    unless table_exists? :posts
      create_table :posts do |t|
        t.string :title
        t.string :description
        t.integer :author_id

        t.timestamps
      end
    end
  end
end
