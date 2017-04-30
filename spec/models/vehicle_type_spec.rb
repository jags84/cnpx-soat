require 'rails_helper'

RSpec.describe VehicleType, type: :model do
  subject {
    described_class.new(name: "Vehicle")
  }
  describe "Record Validations" do
    it "is valid with valid attributes" do
        expect(subject).to be_valid
      end

    it "is not valid without the name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

  end
end
