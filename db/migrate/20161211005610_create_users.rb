class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_type
      t.string :wechat_id
      t.string :wechat_name
      t.string :avatar
      t.string :province
      t.string :city
      t.integer :credit

      t.timestamps
    end
  end
end
