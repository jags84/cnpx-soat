FactoryGirl.define do
  factory :payment do
    policy nil
    user nil
    number_of_quotes 1
    credit_card_terminal "MyString"
  end
end
