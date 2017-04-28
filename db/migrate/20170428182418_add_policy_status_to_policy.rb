class AddPolicyStatusToPolicy < ActiveRecord::Migration[5.0]
  def change
    add_column :policies, :policy_status, :string, default: 'unpaid'
  end
end
