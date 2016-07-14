# This will guess the User class
FactoryGirl.define do
  factory :user do
    email "juan.ruiz@example.com"
    password  "password"
    password_confirmation "password"
  end
end