class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :author
      # t.integer :author_id
    end
  end
end
