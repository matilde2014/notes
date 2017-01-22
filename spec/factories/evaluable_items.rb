FactoryGirl.define do
  factory :evaluable_item do
    sequence(:name) { |n| "evaluable_item#{n}" }
    remarks "MyText"
    weight 0.5

    subject
  end
end