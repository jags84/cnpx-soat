require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(email: "some@domain.com", name: "Juan", last_name: "Gonzalez", phone: "+5812345678", document_type: "Cedula", document_id: "123321", password: "123456", password_confirmation: "123456")
  }

  describe "Record Validations" do
    it "is valid with valid attributes" do
        expect(subject).to be_valid
      end

    it "is not valid without an email" do
      subject.email = ""
      expect(subject).to_not be_valid
    end

    it "is not valid without an name" do
      subject.name = ""
      expect(subject).to_not be_valid
    end

    it "is not valid without an last_name" do
      subject.last_name = ""
      expect(subject).to_not be_valid
    end

    it "is not valid without an phone" do
      subject.phone = ""
      expect(subject).to_not be_valid
    end

    it "is not valid without an document_type" do
      subject.document_type = ""
      expect(subject).to_not be_valid
    end

    it "is not valid without an document_id" do
      subject.document_id = ""
      expect(subject).to_not be_valid
    end
  end

  describe "Methods Validations" do
    it "must return a number of policies" do
      expect(subject.policies_count).to be(0)
    end
  end

  describe "Models associations" do
    it "must have policies" do
      is_expected.to have_many(:policies)
    end
  end
end
