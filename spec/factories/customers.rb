# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    name "MyString"
    street "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    phone "MyString"
  end
end
