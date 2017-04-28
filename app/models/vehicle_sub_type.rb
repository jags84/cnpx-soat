class VehicleSubType < ApplicationRecord
  belongs_to :vehicle_type

  private
    def vehicle_sub_type_params
      params.require(:vehicle_sub_type).permit(:vehicle_type_id, :sub_type_description, :age, :commercial_rate)
    end
end
