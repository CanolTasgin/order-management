class AddCategoryToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :category, null: true, foreign_key: true
  end
end
