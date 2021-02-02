class AddColumnsToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :user_id, :integer
    add_column :comments, :article_id, :integer
    add_column :comments, :content, :text
  end
end
