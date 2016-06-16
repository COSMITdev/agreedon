FactoryGirl.define do
  factory :role do
    agreement nil
    full_name "MyString"
    email "MyString"
    full_address "MyString"
    id_number "MyString"
    role "MyString"
  end
  factory :agreement do
    title "MyString"
    decription "MyText"
    domain "MyString"
  end
end
