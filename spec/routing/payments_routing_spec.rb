require "rails_helper"

RSpec.describe PaymentsController, type: :routing do
  describe "routing" do
    it "routes to #new" do
      expect(:get => "/policies/1/payments/new").to route_to(controller: 'payments', action: 'new', policy_id: '1')
    end

    it "routes to #create" do
      expect(:post => "/policies/1/payments").to route_to(controller: 'payments', action: 'create', policy_id: '1')
    end
  end
end
