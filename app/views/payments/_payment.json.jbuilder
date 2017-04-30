json.extract! payment, :id, :policy_id, :user_id, :number_of_quotes, :credit_card_terminal, :created_at, :updated_at
json.url payment_url(payment, format: :json)
