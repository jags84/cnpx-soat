require 'rails_helper'

RSpec.describe Policy, type: :model do
  subject {
    described_class.new(vehicle_type: FactoryGirl.create(:vehicle_type), vehicle_sub_type: FactoryGirl.create(:vehicle_sub_type), age: 1, number_of_passengers: 1, engine_cylinder: 1.5, tons: 1.5, plate: "AAA000", user: FactoryGirl.create(:user), policy_status: 'unpaid')
  }

  describe "Record Validations" do
    it "is valid with valid attributes" do
        expect(subject).to be_valid
      end

    it "is not valid without the age" do
      subject.age = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a plate" do
      subject.plate = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without number_of_passengers if vehicle_type is 'SERVICIO PUBLICO INTERMUNICIPAL'" do
      subject.vehicle_type.name = 'SERVICIO PUBLICO INTERMUNICIPAL'
      subject.number_of_passengers = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without engine_cylinder if vehicle_type is 'MOTOS'" do
      subject.vehicle_type.name = 'MOTOS'
      subject.engine_cylinder = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without engine_cylinder if vehicle_type is 'CAMPEROS Y CAMIONETAS'" do
      subject.vehicle_type.name = 'CAMPEROS Y CAMIONETAS'
      subject.engine_cylinder = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without engine_cylinder if vehicle_type is 'OFICIALES ESPECIALES'" do
      subject.vehicle_type.name = 'OFICIALES ESPECIALES'
      subject.engine_cylinder = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without engine_cylinder if vehicle_type is 'AUTOS FAMILIARES'" do
      subject.vehicle_type.name = 'AUTOS FAMILIARES'
      subject.engine_cylinder = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without engine_cylinder if vehicle_type is 'VEHICULOS PARA SEIS O MAS PASAJEROS'" do
      subject.vehicle_type.name = 'VEHICULOS PARA SEIS O MAS PASAJEROS'
      subject.engine_cylinder = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without engine_cylinder if vehicle_type is 'AUTOS DE NEGOCIOS Y TAXIS'" do
      subject.vehicle_type.name = 'AUTOS DE NEGOCIOS Y TAXIS'
      subject.engine_cylinder = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without tons if vehicle_type is 'CARGA O MIXTOS'" do
      subject.vehicle_type.name = 'CARGA O MIXTO'
      subject.tons = nil
      expect(subject).to_not be_valid
    end
  end

  describe "when creating policies with identical plates" do
    let(:policy) { FactoryGirl.build(:policy, plate: 'AAA') }
    before do
      FactoryGirl.create(:policy, plate: 'AAA')
    end
    it "raises unique validation error" do
      expect(policy).not_to be_valid
    end
  end

  describe "after create policies, update attributes" do
    before do
      @policy = FactoryGirl.create(:policy)
    end

    it "must set an issue_date" do
      expect(@policy.issue_date).not_to be(nil)
    end

    it "must set an expiration_date" do
      expect(@policy.expiration_date).not_to be(nil)
    end

    it "must set a commercial_rate" do
      expect(@policy.commercial_rate).not_to be(nil)
    end

    it "must set a premium" do
      expect(@policy.premium).not_to be(nil)
    end

    it "must set a fosyga" do
      expect(@policy.fosyga).not_to be(nil)
    end

    it "must set a runt" do
      expect(@policy.runt).not_to be(nil)
    end

    it "must set a total" do
      expect(@policy.total).not_to be(nil)
    end
  end

end
