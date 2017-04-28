class RemoveMotorCapacityFromVehicleSubType < ActiveRecord::Migration[5.0]
  def change
    remove_column :vehicle_sub_types, :motor_capacity, :float
  end
end
