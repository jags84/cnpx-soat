FactoryGirl.define do
  factory :payment do
    policy nil
    number_of_quotes 1
    credit_card_terminal "1234"
  end
end
