class PoliciesController < ApplicationController
  before_action :set_policy, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /policies
  # GET /policies.json
  def index
    @policies = current_user.policies.all
  end

  # GET /policies/1
  # GET /policies/1.json
  def show
    respond_to do |format|
      format.html
      format.json
      format.pdf do
        render pdf: "show",:layout => 'policy_pdf'
      end
    end
  end

  # GET /policies/new
  def new
    @policy = current_user.policies.new
  end

  # POST /policies
  # POST /policies.json
  def create
    @policy = current_user.policies.new(policy_params)
    respond_to do |format|
      if @policy.save
        format.html { redirect_to @policy, notice: 'Policy was successfully created.' }
        format.json { render :show, status: :created, location: @policy }
      else
        format.html { render :new }
        format.json { render json: @policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policies/1
  # DELETE /policies/1.json
  def destroy
    @policy.destroy
    respond_to do |format|
      format.html { redirect_to policies_url, notice: 'Policy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy
      @policy = Policy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policy_params
      params.require(:policy).permit(:vehicle_type_id, :vehicle_sub_type_id, :user_id, :age, :number_of_passengers, :engine_cylinder, :tons, :plate)
    end
end
