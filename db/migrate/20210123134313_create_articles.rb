class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.integer :authorId
      t.string :title
      t.text :text
      t.string :image

      t.timestamps
    end
  end
end
