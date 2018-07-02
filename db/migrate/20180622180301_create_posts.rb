class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.text :sumary
      t.string :image
      t.text   :users_id
      t.boolean :publish
      t.timestamps
    end
  end
end
