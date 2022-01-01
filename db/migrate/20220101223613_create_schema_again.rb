class CreateSchemaAgain < ActiveRecord::Migration[7.0]
  def change

    create_table "categories" do |t|
      t.string "name"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  
    create_table "orders" do |t|
      t.string "currency"
      t.integer "gross"
      t.integer "discount"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.references :categories, null: true, foreign_key: true
    end
  end
end
