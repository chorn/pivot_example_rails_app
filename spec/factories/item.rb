FactoryGirl.define do
  factory :item do
    sequence :name do |n|
      "Item #{n}"
    end

    trait :taco do
      type 'taco'
    end

    trait :book do
      type 'book'
    end
  end
end
