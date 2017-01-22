# This will guess the Subject class
FactoryGirl.define do
  factory :subject do
    sequence(:name)
    hours  "200"
    remarks "Lorem Ipsum"
    course "2017"

    user
  end
end