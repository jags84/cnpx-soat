class Policy < ApplicationRecord
  # SFC Cost
  SFC = 24588.37 # aprox based of document Tarifas_soat_2016C004-09.pdf
  RUNT = 1610

  belongs_to :vehicle_type
  belongs_to :vehicle_sub_type
  belongs_to :user
  has_one :payment
  accepts_nested_attributes_for :payment
  after_create :policy_cost
  validates :vehicle_type_id,:vehicle_sub_type_id, :user_id, :plate, :age, presence: true

  def policy_cost
    self.issue_date = DateTime.now
    self.expiration_date = DateTime.now + 1.year
    self.commercial_rate = self.vehicle_sub_type.commercial_rate
    self.premium = self.vehicle_sub_type.commercial_rate * SFC
    self.fosyga = self.premium * 0.5
    self.runt = RUNT
    self.total = self.premium + self.fosyga + RUNT
    self.save
  end

  def update_status status
    self.policy_status = status
    self.save
  end

  private
    def policy_params
      params.require(:policy).permit(:vehicle_type_id, :vehicle_sub_type_id, :user_id, :age, :number_of_passengers, :engine_cylinder, :tons, :plate, :issue_date, :expiration_date, :commercial_rate, :premium, :fosyga, :runt, :total, :policy_status)
    end

end
