class ChangeUserIdToBeOptionalForCarts < ActiveRecord::Migration[7.0]
  def change
    change_column :carts, :user_id, :integer, null: true
  end
end
