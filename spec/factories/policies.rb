FactoryGirl.define do
  factory :policy do
    vehicle_type
    vehicle_sub_type
    age 1
    number_of_passengers 1
    engine_cylinder 1.5
    tons 1.5
    plate "MyString"
    user
  end
end
