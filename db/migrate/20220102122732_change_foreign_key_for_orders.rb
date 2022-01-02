class ChangeForeignKeyForOrders < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :category_id, :categories_id
  end
end
