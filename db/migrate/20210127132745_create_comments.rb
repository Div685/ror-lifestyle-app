class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|

      t.timestamps
    end
    add_index :comments, :article_id
  end
end
