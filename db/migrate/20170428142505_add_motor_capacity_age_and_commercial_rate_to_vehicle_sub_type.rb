class AddMotorCapacityAgeAndCommercialRateToVehicleSubType < ActiveRecord::Migration[5.0]
  def change
    add_column :vehicle_sub_types, :motor_capacity, :float
    add_column :vehicle_sub_types, :age, :integer
    add_column :vehicle_sub_types, :commercial_rate, :float
  end
end
