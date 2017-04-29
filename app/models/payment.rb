class Payment < ApplicationRecord
  belongs_to :policy
  after_create_commit :update_policy_status
  validates :number_of_quotes, :credit_card_terminal, presence: true

  def update_policy_status
    # Lets simulate an aproved transaction from the payment service
    status = 'approved'
    case status
      when 'approved'
        self.policy.update_status("paid")
      when 'error'
        self.policy.update_status('unpaid-error')
    end
    # Lets simulate a log in case of failur
    # Log.new_entry(error: 'Card Rejected', policy: self.policy.id, error_code: self.transaction.error_code)
  end

  private
    def payment_params
      params.require(:payment).permit(:policy_id, :number_of_quotes, :credit_card_terminal)
    end
end
