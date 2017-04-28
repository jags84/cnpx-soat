require 'rails_helper'

RSpec.describe "policies/index", type: :view do
  before(:each) do
    assign(:policies, [
      Policy.create!(
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
      ),
      Policy.create!(
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
      )
    ])
  end

  it "renders a list of policies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => "Plate".to_s, :count => 2
    assert_select "tr>td", :text => 6.5.to_s, :count => 2
    assert_select "tr>td", :text => 7.5.to_s, :count => 2
    assert_select "tr>td", :text => 8.5.to_s, :count => 2
    assert_select "tr>td", :text => 9.5.to_s, :count => 2
    assert_select "tr>td", :text => 10.5.to_s, :count => 2
  end
end
