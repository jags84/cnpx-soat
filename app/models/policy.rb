class Policy < ApplicationRecord
  # SFC Cost
  SFC = 24589 # aprox based on document Tarifas_soat_2016C004-09.pdf
  RUNT = 1610 # RUNT based on document Tarifas_soat_2016C004-09.pdf
  belongs_to :vehicle_type
  belongs_to :vehicle_sub_type
  belongs_to :user
  has_one :payment
  accepts_nested_attributes_for :payment
  after_create :policy_cost
  validates :vehicle_type_id,:vehicle_sub_type_id, :user_id, :plate, :age, presence: true
  validates :engine_cylinder, presence: true, if: :engine_cylinder_type?
  validates :number_of_passengers, presence: true, if: :number_of_passengers_type?
  validates :tons, presence: true, if: :tons_type?
  validates :plate, uniqueness: true

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

    def engine_cylinder_type?
      type = self.vehicle_type.name
      if type == "MOTOS" || type == "CAMPEROS Y CAMIONETAS" || type =="OFICIALES ESPECIALES" || type =="AUTOS FAMILIARES" || type =="VEHICULOS PARA SEIS O MAS PASAJEROS" || type == "AUTOS DE NEGOCIOS Y TAXIS"
        return true
      end
      return false
    end

    def number_of_passengers_type?
      self.vehicle_type.name == "SERVICIO PUBLICO INTERMUNICIPAL" ? true : false
    end

    def tons_type?
      self.vehicle_type.name == "CARGA O MIXTO" ? true : false
    end
end
