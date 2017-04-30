class VehicleType < ApplicationRecord
  has_many :vehicle_sub_type
  validates :name, presence: true
  private
    def vehicle_type_params
      params.require(:vehicle_type).permit(:name)
    end
end
