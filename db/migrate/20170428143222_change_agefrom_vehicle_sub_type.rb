class ChangeAgefromVehicleSubType < ActiveRecord::Migration[5.0]
  def change
    change_column :vehicle_sub_types, :age, :string
  end
end
