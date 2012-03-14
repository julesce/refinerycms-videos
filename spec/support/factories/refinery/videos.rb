
FactoryGirl.define do
  factory :video, :class => Refinery::Videos::Video do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

