require 'rails_helper'

RSpec.describe Payment, type: :model do
  subject {
    described_class.new(number_of_quotes: 1, credit_card_terminal:'4444',policy: FactoryGirl.create(:policy))
  }
  describe "Record Validations" do
    it "is valid with valid attributes" do
        expect(subject).to be_valid
      end

    it "is not valid without the number_of_quotes" do
      subject.number_of_quotes = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without the credit_card_terminal" do
      subject.credit_card_terminal = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Methods validations" do
    payment = FactoryGirl.create(:payment,policy: FactoryGirl.create(:policy))
    it "set policy_status" do
      expect(payment.policy.policy_status).to eq('paid')
    end
  end
end
