class ChangeForeignKeyForOrdersAgain < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :categories_id, :category_id
  end
end
