require 'rails_helper'

RSpec.describe "payments/show", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :policy => nil,
      :user => nil,
      :number_of_quotes => 2,
      :credit_card_terminal => "Credit Card Terminal"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Credit Card Terminal/)
  end
end
