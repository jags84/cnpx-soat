class CreateVehicleSubTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_sub_types do |t|
      t.references :vehicle_type, foreign_key: true
      t.string :sub_type_description

      t.timestamps
    end
  end
end
