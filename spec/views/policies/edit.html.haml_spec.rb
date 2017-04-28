require 'rails_helper'

RSpec.describe "policies/edit", type: :view do
  before(:each) do
    @policy = assign(:policy, Policy.create!(
      :vehicle_type => nil,
      :vehicle_sub_type => nil,
      :age => 1,
      :number_of_passengers => 1,
      :engine_cylinder => 1.5,
      :tons => 1.5,
      :plate => "MyString",
      :commercial_rate => 1.5,
      :premium => 1.5,
      :fosyga => 1.5,
      :runt => 1.5,
      :total => 1.5
    ))
  end

  it "renders the edit policy form" do
    render

    assert_select "form[action=?][method=?]", policy_path(@policy), "post" do

      assert_select "input#policy_vehicle_type_id[name=?]", "policy[vehicle_type_id]"

      assert_select "input#policy_vehicle_sub_type_id[name=?]", "policy[vehicle_sub_type_id]"

      assert_select "input#policy_age[name=?]", "policy[age]"

      assert_select "input#policy_number_of_passengers[name=?]", "policy[number_of_passengers]"

      assert_select "input#policy_engine_cylinder[name=?]", "policy[engine_cylinder]"

      assert_select "input#policy_tons[name=?]", "policy[tons]"

      assert_select "input#policy_plate[name=?]", "policy[plate]"

      assert_select "input#policy_commercial_rate[name=?]", "policy[commercial_rate]"

      assert_select "input#policy_premium[name=?]", "policy[premium]"

      assert_select "input#policy_fosyga[name=?]", "policy[fosyga]"

      assert_select "input#policy_runt[name=?]", "policy[runt]"

      assert_select "input#policy_total[name=?]", "policy[total]"
    end
  end
end
