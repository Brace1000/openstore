class DropCartsProducts < ActiveRecord::Migration[7.1]
  def change
    drop_table :carts_products
  end
end
