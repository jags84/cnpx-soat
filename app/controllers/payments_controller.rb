class PaymentsController < ApplicationController
  before_action :authenticate_user!

  # GET /payments/new
  def new
    @policy = Policy.find(params[:policy_id])
    @payment = @policy.build_payment
  end

  # POST /payments
  # POST /payments.json
  def create
    @policy = Policy.find(params[:policy_id])
    respond_to do |format|
      if @policy.create_payment(payment_params)
        format.html { redirect_to @policy, notice: 'Payment was successfully created.' }
        format.json { render :show, status: :created, location: @policy }
      else
        format.html { render :new }
        format.json { render json: @policy.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:number_of_quotes, :credit_card_terminal)
    end
end
