require 'rails_helper'
require 'devise'

RSpec.describe PoliciesController, type: :controller do
  include Devise::Test::ControllerHelpers
  login_user

  describe "GET #index" do
    it "assigns all policies as @policies" do
      policy = FactoryGirl.create_list(:policy,1,user: subject.current_user)
      # policy = subject.current_user.policy.create! valid_attributes
      get :index, params: {}
      expect(assigns(:policies)).to eq(policy)
    end
  end

  describe "GET #show" do
    it "assigns the requested policy as @policy" do
      policy = FactoryGirl.create(:policy,user:subject.current_user)
      get :show, params: {id: policy.to_param}
      expect(assigns(:policy)).to eq(policy)
    end
  end

  describe "GET #new" do
    it "assigns a new policy as @policy" do
      get :new, params: {}
      expect(assigns(:policy)).to be_a_new(Policy)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Policy" do
        policy = FactoryGirl.build(:policy)
        expect {
          post :create, params: {policy: {vehicle_type_id:policy.vehicle_type_id, vehicle_sub_type_id:policy.vehicle_sub_type_id, age: 1, number_of_passengers: 1, engine_cylinder: 1.5, tons: 1.5, plate: SecureRandom.hex(8)}}
        }.to change(Policy, :count).by(1)
      end

      it "assigns a newly created policy as @policy" do
        policy = FactoryGirl.build(:policy)
        post :create, params: {policy: {vehicle_type_id:policy.vehicle_type_id, vehicle_sub_type_id:policy.vehicle_sub_type_id, age: 1, number_of_passengers: 1, engine_cylinder: 1.5, tons: 1.5, plate: SecureRandom.hex(8)}}
        expect(assigns(:policy)).to be_a(Policy)
        expect(assigns(:policy)).to be_persisted
      end

      it "redirects to the created policy" do
        policy = FactoryGirl.build(:policy)
        post :create, params: {policy: {vehicle_type_id:policy.vehicle_type_id, vehicle_sub_type_id:policy.vehicle_sub_type_id, age: 1, number_of_passengers: 1, engine_cylinder: 1.5, tons: 1.5, plate: SecureRandom.hex(8)}}
        expect(response).to redirect_to(Policy.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved policy as @policy" do
        policy = FactoryGirl.build(:policy)
        post :create, params: {policy: {vehicle_type_id:policy.vehicle_type_id, vehicle_sub_type_id:policy.vehicle_sub_type_id}}
        expect(assigns(:policy)).to be_a_new(Policy)
      end

      it "re-renders the 'new' template" do
        policy = FactoryGirl.build(:policy)
        post :create, params: {policy: {vehicle_type_id:policy.vehicle_type_id, vehicle_sub_type_id:policy.vehicle_sub_type_id}}
        expect(response).to render_template("new")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested policy" do
      policy = FactoryGirl.create(:policy, user: subject.current_user)
      expect {
        delete :destroy, params: {id: policy.id}
      }.to change(Policy, :count).by(-1)
    end

    it "redirects to the policies list" do
      policy = FactoryGirl.create(:policy, user: subject.current_user)
      delete :destroy, params: {id: policy.id}
      expect(response).to redirect_to(policies_url)
    end
  end

end
