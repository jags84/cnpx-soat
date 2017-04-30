class Api::PlatesController < ApplicationController
  before_action :authenticate_user!
  before_action :check_format
  respond_to :json

  def show
    @policy = Policy.find_by_plate(params[:plate_number])
    @plate_status = @policy.nil? ? 'unregistered' : 'registered'
  end

  private
    def check_format
      render :nothing => true, :status => 406 unless params[:format] == "json"
    end
end
