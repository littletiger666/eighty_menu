class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.datetime :order_time
      t.string :statement
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
