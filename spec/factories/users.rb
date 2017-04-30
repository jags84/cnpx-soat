FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    name "Juan"
    last_name "Gonzalez"
    phone "+5812345678"
    document_type "Cedula"
    document_id "123321"
    password "123456"
    password_confirmation "123456"
  end
end
