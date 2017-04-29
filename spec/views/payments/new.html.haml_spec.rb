require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      :policy => nil,
      :user => nil,
      :number_of_quotes => 1,
      :credit_card_terminal => "MyString"
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input#payment_policy_id[name=?]", "payment[policy_id]"

      assert_select "input#payment_user_id[name=?]", "payment[user_id]"

      assert_select "input#payment_number_of_quotes[name=?]", "payment[number_of_quotes]"

      assert_select "input#payment_credit_card_terminal[name=?]", "payment[credit_card_terminal]"
    end
  end
end
