class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.datetime :comment_time
      t.string :text
      t.integer :score
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
