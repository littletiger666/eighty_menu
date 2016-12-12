class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :cost
      t.string :image
      t.string :introduction
      t.references :comment, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
