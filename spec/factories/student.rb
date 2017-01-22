# This will guess the Student class
FactoryGirl.define do
  factory :student do
    sequence(:nif) { |n| "#{n}" }
    sequence(:name)
    birthday "01/01/1970"
    access_mode "ESTUDIOS_UNIVERSITARIOS"
    sequence(:email) { |n| "name#{n}@domain.com" }
    sequence(:guardian_email) { |n| "name#{n}@domain.com" }
    user
  end
end