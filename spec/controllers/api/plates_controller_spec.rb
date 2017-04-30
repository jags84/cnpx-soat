require 'rails_helper'
require 'devise'

RSpec.describe Api::PlatesController, type: :controller do
  include Devise::Test::ControllerHelpers
  login_user

  describe "GET #show" do
    it "returns http success" do
      get :show, format: :json, params: {plate_number: 'AAA'}
      expect(response).to have_http_status(:success)
    end

    it "returns 406 status without json format" do
      get :show, params: {plate_number: 'AAA'}
      is_expected.to respond_with 406
    end

  end
end
