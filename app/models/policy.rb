class Policy < ApplicationRecord
  belongs_to :vehicle_type
  belongs_to :vehicle_sub_type
  belongs_to :user

  def policy_cost

  end

  private
    def policy_params
      params.require(:policy).permit(:vehicle_type_id, :vehicle_sub_type_id, :user_id, :age, :number_of_passengers, :engine_cylinder, :tons, :plate, :issue_date, :expiration_date, :commercial_rate, :premium, :fosyga, :runt, :total)
    end

end
