require 'rails_helper'
require 'devise'

RSpec.describe PaymentsController, type: :controller do
  include Devise::Test::ControllerHelpers
  login_user
  describe "GET #new" do
    it "assigns a new payment as @payment" do
      policy = FactoryGirl.create(:policy)
      get :new, params: {policy_id: policy.id}
      expect(assigns(:payment)).to be_a_new(Payment)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Payment" do
        policy = FactoryGirl.create(:policy, user:subject.current_user)
        expect {
          post :create, params: {policy_id: policy.id, payment: {number_of_quotes: 1, credit_card_terminal: '1234'}}
        }.to change(Payment, :count).by(1)
      end

      it "assigns a newly created payment as @payment" do
        policy = FactoryGirl.create(:policy, user:subject.current_user)
        post :create, params: {policy_id: policy.id, payment: {number_of_quotes: 1, credit_card_terminal: '1234'}}
        expect(assigns(:payment)).to be_a(Payment)
        expect(assigns(:payment)).to be_persisted
      end

      it "redirects to the payed policy" do
        policy = FactoryGirl.create(:policy, user:subject.current_user)
        post :create, params: {policy_id: policy.id, payment: {number_of_quotes: 1, credit_card_terminal: '1234'}}
        expect(response).to redirect_to(Payment.last.policy)
      end
    end

    context "with invalid params" do

      it "assigns a newly created but unsaved payment as @payment" do
        policy = FactoryGirl.create(:policy, user:subject.current_user)
        post :create, params: {policy_id: policy.id, payment: {number_of_quotes: nil, credit_card_terminal: nil}}
        expect(assigns(:payment)).to be_a_new(Payment)
      end

      it "re-renders the 'new' template" do
        policy = FactoryGirl.create(:policy, user:subject.current_user)
        post :create, params: {policy_id: policy.id, payment: {number_of_quotes: nil, credit_card_terminal: nil}}
        expect(response).to render_template("new")
      end
    end
  end

end
