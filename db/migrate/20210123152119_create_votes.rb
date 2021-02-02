class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :userId
      t.integer :articleId

      t.timestamps
    end
  end
end
