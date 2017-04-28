class RemoveUserFromPayment < ActiveRecord::Migration[5.0]
  def change
    remove_column :payments, :user_id, :string
  end
end
