# This will guess the User class
FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "juan.ruiz#{n}@example.com" }
    password  "password"
    password_confirmation "password"
  end
end