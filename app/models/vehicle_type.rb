class VehicleType < ApplicationRecord
  has_many :vehicle_sub_type

  private
    def vehicle_type_params
      params.require(:vehicle_type).permit(:name)
    end
end
