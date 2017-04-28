require 'rails_helper'

RSpec.describe "policies/show", type: :view do
  before(:each) do
    @policy = assign(:policy, Policy.create!(
      :vehicle_type => nil,
      :vehicle_sub_type => nil,
      :age => 2,
      :number_of_passengers => 3,
      :engine_cylinder => 4.5,
      :tons => 5.5,
      :plate => "Plate",
      :commercial_rate => 6.5,
      :premium => 7.5,
      :fosyga => 8.5,
      :runt => 9.5,
      :total => 10.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/Plate/)
    expect(rendered).to match(/6.5/)
    expect(rendered).to match(/7.5/)
    expect(rendered).to match(/8.5/)
    expect(rendered).to match(/9.5/)
    expect(rendered).to match(/10.5/)
  end
end
