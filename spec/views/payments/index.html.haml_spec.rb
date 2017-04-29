require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        :policy => nil,
        :user => nil,
        :number_of_quotes => 2,
        :credit_card_terminal => "Credit Card Terminal"
      ),
      Payment.create!(
        :policy => nil,
        :user => nil,
        :number_of_quotes => 2,
        :credit_card_terminal => "Credit Card Terminal"
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Credit Card Terminal".to_s, :count => 2
  end
end
