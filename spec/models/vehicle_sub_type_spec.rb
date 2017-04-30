require 'rails_helper'

RSpec.describe VehicleSubType, type: :model do
  subject {
    described_class.new(vehicle_type_id: 1, sub_type_description: "Lorem", commercial_rate: 1.5)
  }
  describe "Record Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without the sub_type_description" do
      subject.sub_type_description = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without the commercial_rate" do
      subject.commercial_rate = nil
      expect(subject).to_not be_valid
    end
  end
end
